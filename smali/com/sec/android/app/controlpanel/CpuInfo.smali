.class public Lcom/sec/android/app/controlpanel/CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/CpuInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

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

.field final mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

.field private mTotalCpuTime:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    .line 52
    new-instance v0, Lcom/sec/android/app/controlpanel/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    .line 133
    new-instance v0, Lcom/sec/android/app/controlpanel/CpuInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/CpuInfo$1;-><init>(Lcom/sec/android/app/controlpanel/CpuInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/CpuInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;
    .registers 2
    .parameter "context"

    .prologue
    .line 57
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/CpuInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 60
    :cond_b
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-object v0
.end method

.method private processCpuUsage()V
    .registers 8

    .prologue
    .line 102
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/ProcessStats;->update()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_33

    .line 119
    :goto_5
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastUserTime()I

    move-result v4

    .line 120
    .local v4, user:I
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastSystemTime()I

    move-result v3

    .line 122
    .local v3, system:I
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIrqTime()I

    move-result v2

    .line 124
    .local v2, irq:I
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIdleTime()I

    move-result v1

    .line 126
    .local v1, idle:I
    add-int v5, v4, v3

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    .line 127
    iget v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2f

    .line 128
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    .line 130
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->refresh()V

    .line 131
    return-void

    .line 103
    .end local v1           #idle:I
    .end local v2           #irq:I
    .end local v3           #system:I
    .end local v4           #user:I
    :catch_33
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    :try_start_34
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/ProcessStats;->init()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_5

    .line 109
    :catch_3a
    move-exception v5

    goto :goto_5
.end method


# virtual methods
.method public getCpuUsage(I)F
    .registers 6
    .parameter "pid"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStatsByPid(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-result-object v0

    .line 81
    .local v0, stat:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    if-nez v0, :cond_a

    .line 82
    const/4 v2, 0x0

    .line 87
    :goto_9
    return v2

    .line 85
    :cond_a
    iget v2, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v1, v2, v3

    .line 87
    .local v1, time:I
    mul-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    div-float/2addr v2, v3

    goto :goto_9
.end method

.method public getCpuUsagePrint(I)Ljava/lang/String;
    .registers 21
    .parameter "limit"

    .prologue
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v3, b:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 161
    .local v1, am:Landroid/app/ActivityManager;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v8, packagePid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, applicaitonInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 164
    .local v9, ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v14, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 167
    .end local v9           #ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v14}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStats()Ljava/util/List;

    move-result-object v11

    .line 168
    .local v11, stat:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    const/4 v4, 0x0

    .line 169
    .local v4, cnt:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_41
    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 171
    .local v10, s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    add-int/lit8 v4, v4, 0x1

    .line 172
    move/from16 v0, p1

    if-le v4, v0, :cond_58

    .line 194
    .end local v10           #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 175
    .restart local v10       #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_58
    iget v14, v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v15, v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x64

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    div-float v12, v14, v15

    .line 176
    .local v12, usage:F
    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    .line 178
    .local v5, f:Ljava/util/Formatter;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "%10.2f"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 181
    .local v13, usageFormatted:Ljava/lang/String;
    iget v14, v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 182
    .restart local v9       #ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-nez v9, :cond_c7

    .line 183
    iget-object v14, v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_41

    .line 186
    :cond_c7
    iget-object v14, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const/4 v6, 0x0

    .local v6, i:I
    :goto_e9
    iget-object v14, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v14, v14

    if-ge v6, v14, :cond_41

    .line 190
    const-string v14, "---["

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_e9
.end method

.method public init()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/ProcessStats;->init()V

    .line 94
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/Observer;

    .line 228
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_6

    .line 230
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_16
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 6
    .parameter "o"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    :cond_19
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V

    .line 98
    return-void
.end method
