.class public Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;
.super Landroid/app/Service;
.source "ProgramMonitorRemoteService.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;


# instance fields
.field private cpu_warning:Z

.field private cpu_warning_level:Ljava/lang/String;

.field private cpu_warning_msg:Ljava/lang/String;

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

.field private runningItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;-><init>(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;-><init>(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->calcCPUUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;

    return-object v0
.end method

.method private calcCPUUsage()V
    .registers 15

    .prologue
    .line 340
    const/4 v10, 0x0

    .line 341
    .local v10, total:F
    const/4 v7, 0x0

    .line 342
    .local v7, topCpuUsage:F
    const-string v8, ""

    .line 343
    .local v8, topRunningName:Ljava/lang/String;
    const-string v9, ""

    .line 344
    .local v9, topRunningPackageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 349
    .local v5, numRunning:I
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    if-eqz v11, :cond_67

    .line 350
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 351
    .local v0, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage(I)F

    move-result v2

    .line 352
    .local v2, cpuUsage:F
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 353
    const-string v11, "ProgramMonitorRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " usage:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_55
    add-float/2addr v10, v2

    .line 356
    cmpl-float v11, v2, v7

    if-lez v11, :cond_5f

    .line 357
    move v7, v2

    .line 358
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 360
    :cond_5f
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_11

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 366
    .end local v0           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v2           #cpuUsage:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_67
    if-lez v5, :cond_7f

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 369
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v11, 0x2000

    :try_start_73
    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 371
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_7e} :catch_13b

    move-result-object v8

    .line 381
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_7f
    :goto_7f
    const/high16 v11, 0x40a0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_14d

    .line 382
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z

    .line 383
    invoke-direct {p0, v10}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getWarningLevel(F)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;

    .line 384
    invoke-direct {p0, v8, v5}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getWarningMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;

    .line 388
    :goto_94
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b6

    .line 389
    const-string v11, "ProgramMonitorRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() cpu_warning:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_b6
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 391
    const-string v11, "ProgramMonitorRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() cpu_warning_level:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_d8
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_fa

    .line 393
    const-string v11, "ProgramMonitorRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() cpu_warning_msg:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_fa
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 395
    const-string v11, "ProgramMonitorRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() top_cpu_usage:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_11a
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_13a

    .line 397
    const-string v11, "ProgramMonitorRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() total_cpu_usage:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_13a
    return-void

    .line 372
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_13b
    move-exception v3

    .line 373
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 374
    const-string v11, "ProgramMonitorRemoteService"

    const-string v12, "calcCPUUsage() NameNotFoundException"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7f

    .line 386
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_14d
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z

    goto/16 :goto_94
.end method

.method private getWarningLevel(F)Ljava/lang/String;
    .registers 3
    .parameter "totalCpuUsage"

    .prologue
    .line 401
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 402
    const-string v0, "level2"

    .line 406
    :goto_8
    return-object v0

    .line 403
    :cond_9
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    .line 404
    const-string v0, "level1"

    goto :goto_8

    .line 406
    :cond_12
    const-string v0, ""

    goto :goto_8
.end method

.method private getWarningMsg(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "topRunningName"
    .parameter "numRunning"

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const/4 v1, 0x1

    if-le p2, v1, :cond_32

    .line 415
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 417
    :cond_32
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCPUWarningLevel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 234
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 235
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningLevel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUWarningMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 240
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 241
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningApplicationCount()I
    .registers 6

    .prologue
    .line 165
    sget-object v2, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 166
    const-string v2, "ProgramMonitorRemoteService"

    const-string v3, "getRunningApplicationCount() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_f
    const/4 v1, 0x0

    .line 169
    .local v1, size:I
    :try_start_10
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningApplicationList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    if-eqz v2, :cond_28

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_49

    move-result v1

    .line 176
    :cond_28
    :goto_28
    sget-object v2, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 177
    const-string v2, "ProgramMonitorRemoteService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRunningApplicationCount() end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_48
    return v1

    .line 173
    :catch_49
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public initCPUUsage()V
    .registers 4

    .prologue
    .line 206
    sget-object v1, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 207
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "initCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->init()V

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    .line 214
    :goto_19
    return-void

    .line 211
    :catch_1a
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public isCPUWarning()Z
    .registers 4

    .prologue
    .line 228
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 229
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCPUWarning() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_22
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 249
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 250
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 139
    sget-object v1, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 140
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_f
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "ProgramMonitorRemoteService.UPDATE_RUNNING_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "ProgramMonitorRemoteService.RUNNING_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "ProgramMonitorRemoteService.CPU_USAGE_WARN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    const-string v0, "ProgramMonitorRemoteService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    return-void
.end method

.method public updateCPUUsage()V
    .registers 4

    .prologue
    .line 217
    sget-object v1, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 218
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "updateCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->calcCPUUsage()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    .line 225
    :goto_17
    return-void

    .line 222
    :catch_18
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public updateRunningApplicationListInfo()V
    .registers 4

    .prologue
    .line 182
    sget-object v1, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 183
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "updateRunningApplicationListInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->updateRunningApplicationListInfo()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 189
    :goto_1a
    return-void

    .line 186
    :catch_1b
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method
