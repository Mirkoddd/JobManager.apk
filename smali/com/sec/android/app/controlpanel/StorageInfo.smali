.class public Lcom/sec/android/app/controlpanel/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/StorageInfo;


# instance fields
.field mAvailDBData:J

.field mAvailData:J

.field mAvailExternalSDCard:J

.field mAvailInternalSDCard:J

.field private mContext:Landroid/content/Context;

.field mExternalSdCardStatus:Ljava/lang/String;

.field mInternalSdCardStatus:Ljava/lang/String;

.field mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field

.field mReadOnly:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mTotalDBData:J

.field mTotalData:J

.field mTotalExternalSDCard:J

.field mTotalInternalSDCard:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    .line 59
    new-instance v0, Lcom/sec/android/app/controlpanel/StorageInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/StorageInfo$1;-><init>(Lcom/sec/android/app/controlpanel/StorageInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/StorageInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/StorageInfo;->updateMemoryStatus()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/sec/android/app/controlpanel/StorageInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/StorageInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    .line 32
    :cond_b
    sget-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    return-object v0
.end method

.method private updateMemoryStatus()V
    .registers 21

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "storage"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageManager;

    .line 147
    .local v14, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v17

    .line 148
    .local v17, volumeList:[Landroid/os/storage/StorageVolume;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, statusInternal:Ljava/lang/String;
    const/4 v12, 0x0

    .line 151
    .local v12, statusExternal:Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3c

    .line 152
    const/16 v18, 0x1

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 154
    :cond_3c
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 156
    const-string v18, "mounted_ro"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_69

    .line 157
    const-string v18, "mounted"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mInternalSdCardStatus:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05003c

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 162
    :cond_69
    if-eqz v12, :cond_90

    const-string v18, "mounted_ro"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_90

    .line 163
    const-string v18, "mounted"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mExternalSdCardStatus:Ljava/lang/String;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05003c

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 168
    :cond_90
    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_169

    .line 171
    :try_start_9a
    new-instance v11, Landroid/os/StatFs;

    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 172
    .local v11, stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v5, v0

    .line 173
    .local v5, blockSize:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v15, v0

    .line 174
    .local v15, totalBlocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v3, v0

    .line 176
    .local v3, availableBlocks:J
    mul-long v18, v15, v5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    .line 177
    mul-long v18, v3, v5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailInternalSDCard:J
    :try_end_ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_ce} :catch_15e

    .line 191
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v11           #stat:Landroid/os/StatFs;
    .end local v15           #totalBlocks:J
    :goto_ce
    if-eqz v12, :cond_18d

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18d

    .line 194
    :try_start_da
    new-instance v11, Landroid/os/StatFs;

    const/16 v18, 0x1

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v11       #stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v5, v0

    .line 196
    .restart local v5       #blockSize:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v15, v0

    .line 197
    .restart local v15       #totalBlocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v3, v0

    .line 200
    .restart local v3       #availableBlocks:J
    mul-long v18, v15, v5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalExternalSDCard:J

    .line 201
    mul-long v18, v3, v5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailExternalSDCard:J
    :try_end_10e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_da .. :try_end_10e} :catch_183

    .line 216
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v11           #stat:Landroid/os/StatFs;
    .end local v15           #totalBlocks:J
    :goto_10e
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 218
    .local v10, path:Ljava/io/File;
    new-instance v11, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v11       #stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v5, v0

    .line 220
    .restart local v5       #blockSize:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v15, v0

    .line 221
    .restart local v15       #totalBlocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v3, v0

    .line 223
    .restart local v3       #availableBlocks:J
    mul-long v18, v15, v5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalData:J

    .line 224
    mul-long v18, v3, v5

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailData:J

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_14c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/controlpanel/Observer;

    .line 239
    .local v9, o:Lcom/sec/android/app/controlpanel/Observer;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_14c

    .line 178
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #o:Lcom/sec/android/app/controlpanel/Observer;
    .end local v10           #path:Ljava/io/File;
    .end local v11           #stat:Landroid/os/StatFs;
    .end local v15           #totalBlocks:J
    :catch_15e
    move-exception v7

    .line 182
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "removed"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mInternalSdCardStatus:Ljava/lang/String;

    goto/16 :goto_ce

    .line 185
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_169
    const-string v18, "unmounted"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mInternalSdCardStatus:Ljava/lang/String;

    .line 186
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    .line 187
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailInternalSDCard:J

    goto/16 :goto_ce

    .line 203
    :catch_183
    move-exception v7

    .line 207
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    const-string v18, "removed"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mExternalSdCardStatus:Ljava/lang/String;

    goto :goto_10e

    .line 210
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_18d
    const-string v18, "unmounted"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mExternalSdCardStatus:Ljava/lang/String;

    .line 211
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalExternalSDCard:J

    .line 212
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailExternalSDCard:J

    goto/16 :goto_10e

    .line 241
    .restart local v3       #availableBlocks:J
    .restart local v5       #blockSize:J
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #path:Ljava/io/File;
    .restart local v11       #stat:Landroid/os/StatFs;
    .restart local v15       #totalBlocks:J
    :cond_1a7
    return-void
.end method


# virtual methods
.method public getAvailableSizeOfData()J
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailData:J

    return-wide v0
.end method

.method public getTotalSizeOfDBData()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalDBData:J

    return-wide v0
.end method

.method public getTotalSizeOfData()J
    .registers 3

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalData:J

    return-wide v0
.end method

.method public getTotalSizeOfExternalSdCard()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalExternalSDCard:J

    return-wide v0
.end method

.method public getTotalSizeOfInternalSdCard()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    return-wide v0
.end method

.method public getUsedSizeOfDBData()J
    .registers 5

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalDBData:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailDBData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedSizeOfData()J
    .registers 5

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalData:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedSizeOfExternalSdCard()J
    .registers 5

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalExternalSDCard:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailExternalSDCard:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedSizeOfInternalSdCard()J
    .registers 5

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailInternalSDCard:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 248
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/StorageInfo;->updateMemoryStatus()V

    .line 250
    return-void
.end method

.method public registerReceiver()V
    .registers 4

    .prologue
    .line 40
    const-string v1, "StorageInfo"

    const-string v2, "registerReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 257
    :cond_d
    return-void
.end method

.method public unregisterReceiver()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "StorageInfo"

    const-string v1, "unregisterReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
