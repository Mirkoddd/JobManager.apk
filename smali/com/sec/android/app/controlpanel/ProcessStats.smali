.class public Lcom/sec/android/app/controlpanel/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field private static final PROCESS_STATS_FORMAT:[I

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkingProcsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xf

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 231
    new-instance v0, Lcom/sec/android/app/controlpanel/ProcessStats$1;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 45
    nop

    :array_22
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 69
    :array_44
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 82
    :array_66
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 6
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 248
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessStatsData:[J

    .line 67
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSinglePidStatsData:[J

    .line 78
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 80
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsData:[J

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSystemCpuData:[J

    .line 98
    iput v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad1:F

    .line 100
    iput v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad5:F

    .line 102
    iput v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad15:F

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 146
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    .line 249
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mIncludeThreads:Z

    .line 250
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .registers 33
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 328
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    .local p6, workingProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v18

    .line 331
    .local v18, pids:[I
    if-nez v18, :cond_4d

    const/4 v10, 0x0

    .line 332
    .local v10, NP:I
    :goto_e
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 333
    .local v11, NS:I
    const/4 v12, 0x0

    .line 334
    .local v12, curStatsIndex:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_14
    if-ge v13, v10, :cond_1b

    .line 335
    aget v5, v18, v13

    .line 336
    .local v5, pid:I
    if-gez v5, :cond_51

    .line 337
    move v10, v5

    .line 464
    .end local v5           #pid:I
    :cond_1b
    :goto_1b
    if-ge v12, v11, :cond_27a

    .line 466
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 467
    .local v21, st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 468
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 469
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 470
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 471
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    .line 472
    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    add-int/lit8 v11, v11, -0x1

    .line 477
    goto :goto_1b

    .line 331
    .end local v10           #NP:I
    .end local v11           #NS:I
    .end local v12           #curStatsIndex:I
    .end local v13           #i:I
    .end local v21           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_4d
    move-object/from16 v0, v18

    array-length v10, v0

    goto :goto_e

    .line 340
    .restart local v5       #pid:I
    .restart local v10       #NP:I
    .restart local v11       #NS:I
    .restart local v12       #curStatsIndex:I
    .restart local v13       #i:I
    :cond_51
    if-ge v12, v11, :cond_89

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-object/from16 v21, v3

    .line 342
    .restart local v21       #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :goto_5d
    if-eqz v21, :cond_166

    move-object/from16 v0, v21

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    if-ne v3, v5, :cond_166

    .line 344
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    .line 345
    add-int/lit8 v12, v12, 0x1

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v19, v0

    .line 350
    .local v19, procStats:[J
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v4, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 334
    .end local v19           #procStats:[J
    :cond_86
    :goto_86
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 340
    .end local v21           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_89
    const/16 v21, 0x0

    goto :goto_5d

    .line 355
    .restart local v19       #procStats:[J
    .restart local v21       #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_8c
    const/4 v3, 0x0

    aget-wide v16, v19, v3

    .line 356
    .local v16, minfaults:J
    const/4 v3, 0x1

    aget-wide v14, v19, v3

    .line 357
    .local v14, majfaults:J
    const/4 v3, 0x2

    aget-wide v24, v19, v3

    .line 358
    .local v24, utime:J
    const/4 v3, 0x3

    aget-wide v22, v19, v3

    .line 360
    .local v22, stime:J
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    cmp-long v3, v24, v3

    if-nez v3, :cond_c8

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    cmp-long v3, v22, v3

    if-nez v3, :cond_c8

    .line 361
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 362
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 363
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 364
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 365
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    if-eqz v3, :cond_86

    .line 366
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    goto :goto_86

    .line 371
    :cond_c8
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    if-nez v3, :cond_d3

    .line 372
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    .line 375
    :cond_d3
    if-gez p2, :cond_101

    .line 376
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->getName(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_101

    .line 378
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/controlpanel/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    .line 383
    :cond_101
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    sub-long v3, v24, v3

    long-to-int v3, v3

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 384
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    sub-long v3, v22, v3

    long-to-int v3, v3

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 385
    move-wide/from16 v0, v24

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    .line 386
    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    .line 387
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    sub-long v3, v16, v3

    long-to-int v3, v3

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 388
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    sub-long v3, v14, v3

    long-to-int v3, v3

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 389
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    .line 390
    move-object/from16 v0, v21

    iput-wide v14, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    .line 395
    move-object/from16 v0, v21

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    int-to-long v3, v3

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_86

    move-object/from16 v0, v21

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    int-to-long v3, v3

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_86

    .line 396
    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_86

    .line 401
    .end local v14           #majfaults:J
    .end local v16           #minfaults:J
    .end local v19           #procStats:[J
    .end local v22           #stime:J
    .end local v24           #utime:J
    :cond_166
    if-eqz v21, :cond_16e

    move-object/from16 v0, v21

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    if-le v3, v5, :cond_24f

    .line 403
    :cond_16e
    new-instance v21, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .end local v21           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mIncludeThreads:Z

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v5, v1, v3}, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;-><init>(IIZ)V

    .line 404
    .restart local v21       #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 405
    add-int/lit8 v12, v12, 0x1

    .line 406
    add-int/lit8 v11, v11, 0x1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v20, v0

    .line 411
    .local v20, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v19, v0

    .line 412
    .restart local v19       #procStats:[J
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v3, v4, v0, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 414
    if-gez p2, :cond_1f7

    const/4 v3, 0x0

    aget-object v3, v20, v3

    :goto_1ac
    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 415
    const-wide/16 v3, 0x0

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    .line 416
    const-wide/16 v3, 0x0

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    .line 417
    const-wide/16 v3, 0x0

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    .line 424
    :goto_1c6
    if-gez p2, :cond_217

    .line 425
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->getName(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Ljava/lang/String;)V

    .line 436
    :cond_1d3
    :goto_1d3
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 437
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 438
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 439
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 440
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    .line 441
    if-nez p3, :cond_86

    .line 442
    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_86

    .line 414
    :cond_1f7
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1ac

    .line 419
    :cond_1fc
    const-string v3, "<unknown>"

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 420
    const-wide/16 v3, 0x0

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    .line 421
    const-wide/16 v3, 0x0

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    goto :goto_1c6

    .line 427
    :cond_217
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 428
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->nameWidth:I

    .line 429
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d3

    .line 430
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/controlpanel/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    goto :goto_1d3

    .line 448
    .end local v19           #procStats:[J
    .end local v20           #procStatsString:[Ljava/lang/String;
    :cond_24f
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 449
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 450
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 451
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 452
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    .line 453
    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    add-int/lit8 v11, v11, -0x1

    .line 460
    add-int/lit8 v13, v13, -0x1

    .line 461
    goto/16 :goto_86

    .line 479
    .end local v5           #pid:I
    .end local v21           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_27a
    return-object v18
.end method

.method private getName(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Ljava/lang/String;)V
    .registers 8
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    .line 739
    iget-object v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 740
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 741
    :cond_10
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_35

    .line 743
    move-object v2, v0

    .line 744
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 745
    .local v1, i:I
    if-lez v1, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_35

    .line 746
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 750
    .end local v0           #cmdName:Ljava/lang/String;
    .end local v1           #i:I
    :cond_35
    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_41

    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 751
    :cond_41
    iput-object v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 752
    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->nameWidth:I

    .line 754
    :cond_4b
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 715
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, is:Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 717
    .local v2, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 719
    if-lez v2, :cond_27

    .line 721
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v2, :cond_19

    .line 722
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    aget-byte v3, v3, v0

    if-ne v3, p2, :cond_23

    .line 726
    :cond_19
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIII)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_22} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_26

    .line 735
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :goto_22
    return-object v3

    .line 721
    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    .restart local v2       #len:I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 731
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :catch_26
    move-exception v3

    .line 735
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_22

    .line 728
    :catch_29
    move-exception v3

    goto :goto_27
.end method


# virtual methods
.method public final getLastIdleTime()I
    .registers 2

    .prologue
    .line 580
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .prologue
    .line 572
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .prologue
    .line 560
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getWorkingStats()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_e

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/controlpanel/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    .line 613
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getWorkingStatsByPid(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    .registers 4
    .parameter "pid"

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    if-eqz v0, :cond_6

    .line 598
    const/4 v0, 0x0

    .line 600
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    goto :goto_5
.end method

.method public init()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/ProcessStats;->update()V

    .line 262
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .registers 26

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLastSampleTime:J

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurrentSampleTime:J

    .line 276
    const-string v4, "/proc"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/controlpanel/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurPids:[I

    .line 277
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_41
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 282
    .local v17, s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 285
    .end local v17           #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v20, v0

    .line 286
    .local v20, sysCpu:[J
    const-string v3, "/proc/stat"

    sget-object v4, Lcom/sec/android/app/controlpanel/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v4, v5, v0, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 288
    const/4 v3, 0x0

    aget-wide v3, v20, v3

    const/4 v5, 0x1

    aget-wide v5, v20, v5

    add-long v23, v3, v5

    .line 290
    .local v23, usertime:J
    const/4 v3, 0x2

    aget-wide v21, v20, v3

    .line 292
    .local v21, systemtime:J
    const/4 v3, 0x3

    aget-wide v11, v20, v3

    .line 294
    .local v11, idletime:J
    const/4 v3, 0x4

    aget-wide v13, v20, v3

    .line 295
    .local v13, iowaittime:J
    const/4 v3, 0x5

    aget-wide v15, v20, v3

    .line 296
    .local v15, irqtime:J
    const/4 v3, 0x6

    aget-wide v18, v20, v3

    .line 298
    .local v18, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseUserTime:J

    sub-long v3, v23, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    .line 299
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSystemTime:J

    sub-long v3, v21, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    .line 300
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIoWaitTime:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIoWaitTime:I

    .line 301
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIrqTime:J

    sub-long v3, v15, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    .line 302
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v3, v18, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSoftIrqTime:I

    .line 303
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIdleTime:J

    sub-long v3, v11, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIdleTime:I

    .line 313
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseUserTime:J

    .line 314
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSystemTime:J

    .line 315
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIoWaitTime:J

    .line 316
    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIrqTime:J

    .line 317
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSoftIrqTime:J

    .line 318
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIdleTime:J

    .line 321
    .end local v11           #idletime:J
    .end local v13           #iowaittime:J
    .end local v15           #irqtime:J
    .end local v18           #softirqtime:J
    .end local v21           #systemtime:J
    .end local v23           #usertime:J
    :cond_ea
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    .line 322
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 323
    return-void
.end method
