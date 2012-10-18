.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstalledAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    }
.end annotation


# static fields
.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonPressed:Z

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private scrollState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    .line 73
    sget-object v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getUninstallLockPackageList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    .line 75
    :cond_10
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    return-void
.end method

.method private getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .parameter "_configFilename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, _packageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, dis:Ljava/io/DataInputStream;
    if-nez p2, :cond_4

    .line 377
    :cond_3
    :goto_3
    return-void

    .line 346
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_c1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_bf

    .line 348
    .end local v0           #dis:Ljava/io/DataInputStream;
    .local v1, dis:Ljava/io/DataInputStream;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-lez v7, :cond_68

    .line 349
    const/4 v5, 0x0

    .line 351
    .local v5, strNumOfPackages:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 353
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_68

    .line 354
    :cond_2a
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configFilename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_43} :catch_43
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_43} :catch_7a

    .line 362
    .end local v5           #strNumOfPackages:Ljava/lang/String;
    :catch_43
    move-exception v3

    move-object v0, v1

    .line 363
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :goto_45
    :try_start_45
    const-string v7, "InstalledAppsPackageInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There has no files. :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_b0

    .line 369
    if-eqz v0, :cond_3

    .line 371
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_3

    .line 372
    :catch_63
    move-exception v2

    .line 373
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 358
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_68
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-eqz v7, :cond_a1

    .line 359
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, strPackageName:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_79} :catch_43
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_79} :catch_7a

    goto :goto_68

    .line 365
    .end local v6           #strPackageName:Ljava/lang/String;
    :catch_7a
    move-exception v4

    move-object v0, v1

    .line 366
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    .local v4, ioe:Ljava/io/IOException;
    :goto_7c
    :try_start_7c
    const-string v7, "InstalledAppsPackageInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There has IOException. :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_b0

    .line 369
    if-eqz v0, :cond_3

    .line 371
    :try_start_96
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9b

    goto/16 :goto_3

    .line 372
    :catch_9b
    move-exception v2

    .line 373
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 369
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_a1
    if-eqz v1, :cond_c3

    .line 371
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a9

    move-object v0, v1

    .line 374
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_3

    .line 372
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catch_a9
    move-exception v2

    .line 373
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 374
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_3

    .line 369
    .end local v2           #e:Ljava/io/IOException;
    :catchall_b0
    move-exception v7

    :goto_b1
    if-eqz v0, :cond_b6

    .line 371
    :try_start_b3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 374
    :cond_b6
    :goto_b6
    throw v7

    .line 372
    :catch_b7
    move-exception v2

    .line 373
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b6

    .line 369
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catchall_bc
    move-exception v7

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_b1

    .line 365
    :catch_bf
    move-exception v4

    goto :goto_7c

    .line 362
    :catch_c1
    move-exception v3

    goto :goto_45

    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_c3
    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public getBaseAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScrollState()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->scrollState:I

    return v0
.end method

.method public getSortOrder()I
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "installAppList_sort_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUninstallLockPackageList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    const-string v0, "/system/etc/uninstall_lock_packages.txt"

    .line 320
    .local v0, uninstallLockFileName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, uninstallLockPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "/system/etc/uninstall_lock_packages.txt"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 324
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1c

    .line 325
    :cond_14
    const-string v2, "InstalledAppsPackageInfoAdapter"

    const-string v3, "There\'s no information"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .line 329
    .end local v1           #uninstallLockPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 114
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt p1, v8, :cond_a

    .line 118
    const/4 v8, 0x0

    .line 248
    :goto_9
    return-object v8

    .line 121
    :cond_a
    if-nez p2, :cond_1d8

    .line 122
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030002

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;-><init>()V

    .line 124
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    const v8, 0x7f07000b

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 125
    const v8, 0x7f07000a

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 126
    const v8, 0x7f07000c

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 127
    const v8, 0x7f07000e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    .line 128
    const v8, 0x7f07000f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    .line 129
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const v9, 0x7f050006

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_5d
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 136
    .local v4, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v4, :cond_1d5

    .line 139
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v8

    if-eqz v8, :cond_1f2

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, isLocked:Z
    sget-object v8, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-eqz v8, :cond_1e4

    .line 144
    const/4 v1, 0x0

    .local v1, idxPackage:I
    :goto_73
    sget-object v8, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_b7

    .line 146
    sget-object v8, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e0

    .line 148
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    const-string v8, "InstalledAppsPackageInfoAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change button type by gone : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v3, 0x1

    .line 157
    :cond_b7
    if-nez v3, :cond_e1

    .line 159
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    const-string v8, "InstalledAppsPackageInfoAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change button type by visible : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1           #idxPackage:I
    :cond_e1
    :goto_e1
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.swift.app.kiesair"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.infraware.polarisoffice"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.vlingo.client.samsung"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.swype.android.inputmethod"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.android.im"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.music"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.seven.Z7"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.ccl.csp.app.secretwallpaper.themeone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_159

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.ccl.csp.app.secretwallpaper.themetwo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_166

    .line 181
    :cond_159
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    .end local v3           #isLocked:Z
    :cond_166
    :goto_166
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v5

    .line 204
    .local v5, size:J
    const-string v7, ""

    .line 205
    .local v7, sizeString:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_17c

    .line 206
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 208
    :cond_17c
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_200

    .line 209
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_18b
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v2, 0x0

    .line 220
    .local v2, installLocation:Ljava/lang/String;
    const-string v2, ""

    .line 223
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getStoredExternalStorage()I

    move-result v8

    packed-switch v8, :pswitch_data_26c

    .line 241
    :goto_1b2
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 242
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 243
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v2           #installLocation:Ljava/lang/String;
    .end local v5           #size:J
    .end local v7           #sizeString:Ljava/lang/String;
    :cond_1d5
    move-object v8, p2

    .line 248
    goto/16 :goto_9

    .line 132
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    .end local v4           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1d8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    goto/16 :goto_5d

    .line 144
    .restart local v1       #idxPackage:I
    .restart local v3       #isLocked:Z
    .restart local v4       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1e0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_73

    .line 167
    .end local v1           #idxPackage:I
    :cond_1e4
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_e1

    .line 185
    .end local v3           #isLocked:Z
    :cond_1f2
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_166

    .line 211
    .restart local v5       #size:J
    .restart local v7       #sizeString:Ljava/lang/String;
    :cond_200
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18b

    .line 225
    .restart local v2       #installLocation:Ljava/lang/String;
    :pswitch_20a
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f050050

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b2

    .line 229
    :pswitch_22a
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f050051

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b2

    .line 233
    :pswitch_24b
    iget-object v8, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f050052

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b2

    .line 223
    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_20a
        :pswitch_22a
        :pswitch_24b
    .end packed-switch
.end method

.method public isButtonPressed()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->isButtonPressed()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getScrollState()I

    move-result v0

    if-nez v0, :cond_f

    .line 270
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 272
    :cond_f
    return-void
.end method

.method public setButtonPressed(Z)V
    .registers 2
    .parameter "buttonPressed"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    .line 265
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 107
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "touchListener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 111
    return-void
.end method

.method public setScrollState(I)V
    .registers 2
    .parameter "scrollState"

    .prologue
    .line 256
    iput p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->scrollState:I

    .line 257
    return-void
.end method

.method public setSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 291
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_b

    .line 292
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "installAppList_sort_order"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public sort()V
    .registers 4

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getSortOrder()I

    move-result v0

    .line 277
    .local v0, sortOrder:I
    if-nez v0, :cond_11

    .line 278
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    :cond_10
    :goto_10
    return-void

    .line 279
    :cond_11
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_10

    .line 284
    :catch_1f
    move-exception v1

    goto :goto_10

    .line 281
    :cond_21
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_1f

    goto :goto_10
.end method
