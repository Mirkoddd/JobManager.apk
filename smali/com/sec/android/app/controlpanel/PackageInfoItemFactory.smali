.class public Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;
.super Ljava/lang/Object;
.source "PackageInfoItemFactory.java"


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private canClearUserData(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .parameter "a"

    .prologue
    .line 298
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private checkPermission(Lcom/sec/android/app/controlpanel/PackageInfoItem;Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .parameter "packageInfoItem"
    .parameter "appInfo"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    const-string v0, "com.sec.android.app.memo"

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.sec.android.app.ve"

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 127
    :cond_1a
    invoke-virtual {p1, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setHideRunningAppList(Z)V

    .line 134
    :goto_1d
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isHideRunningAppList()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 137
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addHiddenPackage(Ljava/lang/String;)V

    .line 139
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.controlpanel.permission.MUST_BE_SHOW_RUNNING_APP_LIST"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cc

    move v0, v1

    :goto_3f
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMustBeShowRunningAppList(Z)V

    .line 142
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isMustBeShowRunningAppList()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 145
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addMustBeShownPackage(Ljava/lang/String;)V

    .line 148
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.controlpanel.permission.GET_INTENT_ACTION_AFTER_FORCESTOP"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cf

    move v0, v1

    :goto_64
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setGetIntentActionAfterForceStop(Z)V

    .line 154
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isGetIntentActionAfterForceStop()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 157
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".RESTART_PACKAGE_ACTION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addIntentActionAfterKilledPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_8f
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.controlpanel.permission.EXCLUDE_MEMORY_CLEAN"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d1

    :goto_9f
    invoke-virtual {p1, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setGetIntentActionAfterForceStop(Z)V

    .line 165
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isGetIntentActionAfterForceStop()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 168
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addMemoryClearHiddennPackage(Ljava/lang/String;)V

    .line 171
    :cond_b3
    return-void

    .line 129
    :cond_b4
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.controlpanel.permission.HIDE_RUNNING_APP_LIST"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ca

    move v0, v1

    :goto_c5
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setHideRunningAppList(Z)V

    goto/16 :goto_1d

    :cond_ca
    move v0, v2

    goto :goto_c5

    :cond_cc
    move v0, v2

    .line 139
    goto/16 :goto_3f

    :cond_cf
    move v0, v2

    .line 148
    goto :goto_64

    :cond_d1
    move v1, v2

    .line 161
    goto :goto_9f
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;
    .registers 2
    .parameter "context"

    .prologue
    .line 61
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->instance:Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->instance:Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    .line 63
    :cond_b
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->instance:Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    return-object v0
.end method

.method private isStoredDataOnly(Landroid/content/pm/ApplicationInfo;)Z
    .registers 7
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_e} :catch_15

    move-result-object v0

    .line 320
    :goto_f
    if-nez v0, :cond_14

    if-eqz p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 316
    :catch_15
    move-exception v2

    goto :goto_f

    .line 313
    :catch_17
    move-exception v2

    goto :goto_f
.end method

.method private isStoredExternalStorage(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .parameter "a"

    .prologue
    .line 324
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .parameter "a"

    .prologue
    .line 302
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .parameter "a"

    .prologue
    .line 306
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadPackageCacheFile()Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    .registers 9

    .prologue
    .line 232
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CachedFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, appNameCache:Ljava/io/File;
    const/4 v4, 0x0

    .line 235
    .local v4, ois:Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 237
    .local v2, cache:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    :try_start_2a
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_34} :catch_47
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_51

    .line 238
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_34
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    move-object v2, v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_63
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3c} :catch_69
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_66

    .line 245
    if-eqz v5, :cond_6c

    .line 247
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_44

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :cond_42
    :goto_42
    move-object v6, v2

    .line 252
    :cond_43
    :goto_43
    return-object v6

    .line 248
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_44
    move-exception v6

    move-object v4, v5

    .line 249
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_42

    .line 239
    :catch_47
    move-exception v3

    .line 240
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_48
    const/4 v6, 0x0

    .line 245
    if-eqz v4, :cond_43

    .line 247
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_43

    .line 248
    :catch_4f
    move-exception v7

    goto :goto_43

    .line 241
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_51
    move-exception v6

    .line 245
    :goto_52
    if-eqz v4, :cond_42

    .line 247
    :try_start_54
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_42

    .line 248
    :catch_58
    move-exception v6

    goto :goto_42

    .line 245
    :catchall_5a
    move-exception v6

    :goto_5b
    if-eqz v4, :cond_60

    .line 247
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    .line 249
    :cond_60
    :goto_60
    throw v6

    .line 248
    :catch_61
    move-exception v7

    goto :goto_60

    .line 245
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catchall_63
    move-exception v6

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_5b

    .line 241
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_66
    move-exception v6

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_52

    .line 239
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_69
    move-exception v3

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_48

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :cond_6c
    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_42
.end method

.method private savePackageCacheFile(Lcom/sec/android/app/controlpanel/PackageInfoItemCache;)Z
    .registers 10
    .parameter "packageCache"

    .prologue
    const/4 v5, 0x0

    .line 259
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CachedFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, appNameCache:Ljava/io/File;
    const/4 v3, 0x0

    .line 263
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_2a
    new-instance v4, Ljava/io/ObjectOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_56

    .line 264
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_34
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_8d

    .line 270
    if-eqz v4, :cond_3f

    .line 272
    :try_start_39
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_45

    .line 277
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_42

    .line 284
    :cond_3f
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :cond_41
    :goto_41
    return v5

    .line 278
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_42
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    move-object v3, v4

    .line 279
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_41

    .line 273
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_45
    move-exception v2

    .line 277
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_46
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4b

    move-object v3, v4

    .line 279
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_41

    .line 278
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_4b
    move-exception v2

    move-object v3, v4

    .line 279
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_41

    .line 276
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_4e
    move-exception v6

    .line 277
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 279
    throw v6

    .line 278
    :catch_53
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    move-object v3, v4

    .line 279
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_41

    .line 265
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_56
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/Exception;
    :goto_57
    if-eqz v3, :cond_41

    .line 272
    :try_start_59
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_69
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_62

    .line 277
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_41

    .line 278
    :catch_60
    move-exception v2

    .line 279
    .restart local v2       #ioe:Ljava/io/IOException;
    goto :goto_41

    .line 273
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_62
    move-exception v2

    .line 277
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_63
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_41

    .line 278
    :catch_67
    move-exception v2

    .line 279
    goto :goto_41

    .line 276
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_69
    move-exception v6

    .line 277
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 279
    throw v6

    .line 278
    :catch_6e
    move-exception v2

    .line 279
    .restart local v2       #ioe:Ljava/io/IOException;
    goto :goto_41

    .line 270
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_70
    move-exception v6

    :goto_71
    if-eqz v3, :cond_79

    .line 272
    :try_start_73
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_83
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7c

    .line 277
    :try_start_76
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 279
    :cond_79
    throw v6

    .line 278
    :catch_7a
    move-exception v2

    .line 279
    .restart local v2       #ioe:Ljava/io/IOException;
    goto :goto_41

    .line 273
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_7c
    move-exception v2

    .line 277
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_41

    .line 278
    :catch_81
    move-exception v2

    .line 279
    goto :goto_41

    .line 276
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_83
    move-exception v6

    .line 277
    :try_start_84
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 279
    throw v6

    .line 278
    :catch_88
    move-exception v2

    .line 279
    .restart local v2       #ioe:Ljava/io/IOException;
    goto :goto_41

    .line 270
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_8a
    move-exception v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_71

    .line 265
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_8d
    move-exception v1

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_57
.end method

.method private updatePackageInfoItem(Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .registers 6
    .parameter "packageName"
    .parameter "packageInfoItem"

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 93
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->canClearUserData(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCanClearData(Z)V

    .line 94
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemApp(Z)V

    .line 95
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemAppUpdate(Z)V

    .line 96
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setInstalledTime(J)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    .line 98
    sget-object v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->isStoredDataOnly(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 101
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setStoredExternalStorage(I)V

    .line 112
    :goto_46
    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->checkPermission(Lcom/sec/android/app/controlpanel/PackageInfoItem;Landroid/content/pm/ApplicationInfo;)V

    .line 121
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_49
    return-void

    .line 102
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_4a
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->isStoredExternalStorage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setStoredExternalStorage(I)V

    goto :goto_46

    .line 113
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_55
    move-exception v1

    goto :goto_49

    .line 106
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_57
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setStoredExternalStorage(I)V
    :try_end_5b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_5b} :catch_55
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_46

    .line 117
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_5c
    move-exception v1

    goto :goto_49
.end method


# virtual methods
.method public clearCache()V
    .registers 4

    .prologue
    .line 215
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CachedFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, appNameCache:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 226
    :cond_34
    return-void
.end method

.method public getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .registers 4
    .parameter "packageName"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 81
    .local v0, packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-nez v0, :cond_17

    .line 82
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local v0           #packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-direct {v0, p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v0       #packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->updatePackageInfoItem(Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 86
    :cond_17
    return-object v0
.end method

.method public loadCache()V
    .registers 8

    .prologue
    .line 177
    const-string v5, "PackageInfoItemFactory"

    const-string v6, "loadCache() start!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->loadPackageCacheFile()Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    move-result-object v0

    .line 179
    .local v0, cache:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    if-eqz v0, :cond_4d

    .line 180
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 181
    .local v2, entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 182
    .local v4, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->get(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;

    move-result-object v1

    .line 183
    .local v1, cachedItem:Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    if-eqz v1, :cond_17

    .line 184
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getCodeSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSize(J)V

    .line 186
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getDataSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSize(J)V

    .line 187
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    goto :goto_17

    .line 191
    .end local v1           #cachedItem:Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    .end local v2           #entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_4d
    const-string v5, "PackageInfoItemFactory"

    const-string v6, "loadCache() end!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public reloadAppName()V
    .registers 5

    .prologue
    .line 291
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 292
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 293
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 295
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_21
    return-void
.end method

.method public saveCache()V
    .registers 11

    .prologue
    .line 198
    const-string v1, "PackageInfoItemFactory"

    const-string v2, "saveCache() start!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;-><init>()V

    .line 200
    .local v0, cache:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->mPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 201
    .local v7, entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 202
    .local v9, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 203
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeSize()J

    move-result-wide v3

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getDataSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->put(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_16

    .line 207
    .end local v7           #entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v9           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_46
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->savePackageCacheFile(Lcom/sec/android/app/controlpanel/PackageInfoItemCache;)Z

    .line 208
    const-string v1, "PackageInfoItemFactory"

    const-string v2, "saveCache() end!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public updatePackageInfoItem(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->updatePackageInfoItem(Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 71
    return-void
.end method
