.class public Lcom/sec/android/app/controlpanel/MemoryInfo;
.super Ljava/lang/Object;
.source "MemoryInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/MemoryInfo;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mObservedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    .line 49
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo$1;-><init>(Lcom/sec/android/app/controlpanel/MemoryInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 41
    :cond_b
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-object v0
.end method


# virtual methods
.method public getAvailMem()J
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public getTotalMemory()J
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 144
    const/16 v3, 0xc

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v7

    const/4 v3, 0x1

    const-string v4, "MemFree:"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "Buffers:"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "Cached:"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "Active:"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "Inactive:"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "AnonPages:"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "Mapped:"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "Slab:"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "SReclaimable:"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "SUnreclaim:"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "PageTables:"

    aput-object v4, v1, v3

    .line 148
    .local v1, mMemInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 149
    .local v2, mMemInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4d
    array-length v3, v2

    if-ge v0, v3, :cond_5a

    .line 151
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 154
    :cond_5a
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public refresh()V
    .registers 5

    .prologue
    .line 78
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/Observer;

    .line 80
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_d

    .line 82
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_1d
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 6
    .parameter "o"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    :cond_13
    return-void
.end method

.method public updateObservedPackageList(Ljava/util/List;)V
    .registers 6
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
    .line 179
    .local p1, l:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    monitor-enter v3

    .line 180
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 182
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 186
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 187
    return-void
.end method

.method public updateUsedMem(Ljava/util/List;)V
    .registers 12
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
    .line 101
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 102
    .local v7, size:I
    new-array v6, v7, [I

    .line 104
    .local v6, pids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v8, v6

    if-ge v1, v8, :cond_19

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v8}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v8

    aput v8, v6, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 108
    :cond_19
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 111
    .local v0, debugMemInfo:[Landroid/os/Debug$MemoryInfo;
    const/4 v1, 0x0

    :goto_25
    array-length v8, v6

    if-ge v1, v8, :cond_3e

    .line 114
    aget v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 118
    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 119
    .local v5, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 120
    .local v4, memUsage:Ljava/lang/Integer;
    if-eqz v4, :cond_42

    .line 123
    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMemUsage(J)V

    goto :goto_42

    .line 131
    .end local v4           #memUsage:Ljava/lang/Integer;
    .end local v5           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_66
    return-void
.end method
