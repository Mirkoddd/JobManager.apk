.class public Lcom/sec/android/app/controlpanel/PackageInfoItem;
.super Ljava/lang/Object;
.source "PackageInfoItem.java"


# static fields
.field public static DefaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private static sLastIdx:I


# instance fields
.field private appDetail:Ljava/lang/CharSequence;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/CharSequence;

.field private canClearData:Z

.field private canKilled:Z

.field category:I

.field private codeSize:J

.field private cpuUsage:F

.field private cpuUsageString:Ljava/lang/String;

.field private dataSize:J

.field private getIntentActionAfterForceStop:Z

.field private hideRunningAppList:Z

.field private id:I

.field private installedTime:J

.field private intent:Landroid/content/Intent;

.field private memUsage:J

.field private memUsageString:Ljava/lang/String;

.field private mustBeShowRunningAppList:Z

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private processStartTime:J

.field private recentTaskOrder:I

.field private service:Z

.field private sizeComputed:Z

.field private storedExternalStorage:I

.field private systemApp:Z

.field private systemAppUpdate:Z

.field private task:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    .line 88
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->category:I

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appDetail:Ljava/lang/CharSequence;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    .line 50
    iput-wide v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    .line 52
    iput-wide v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    .line 54
    iput-wide v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    .line 62
    iput v3, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processStartTime:J

    .line 84
    iput v3, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->recentTaskOrder:I

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->packageName:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    sget v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->id:I

    .line 96
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCategory()I
    .registers 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    const/4 v0, 0x1

    .line 331
    :goto_7
    return v0

    .line 327
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 328
    const/4 v0, 0x2

    goto :goto_7

    .line 331
    :cond_10
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->category:I

    goto :goto_7
.end method

.method public getCodeDataSize()J
    .registers 5

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCodeSize()J
    .registers 3

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    return-wide v0
.end method

.method public getCpuRateFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuUsage()F
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    return v0
.end method

.method public getDataSize()J
    .registers 3

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    return-wide v0
.end method

.method public getInstalledTime()J
    .registers 3

    .prologue
    .line 437
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->installedTime:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMemUsage()J
    .registers 3

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    return-wide v0
.end method

.method public getMemUsageString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    return v0
.end method

.method public getProcessStartTime()J
    .registers 3

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processStartTime:J

    return-wide v0
.end method

.method public getStoredExternalStorage()I
    .registers 2

    .prologue
    .line 405
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->storedExternalStorage:I

    return v0
.end method

.method public isCanKilled()Z
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    return v0
.end method

.method public isGetIntentActionAfterForceStop()Z
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getIntentActionAfterForceStop:Z

    return v0
.end method

.method public isHideRunningAppList()Z
    .registers 2

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->hideRunningAppList:Z

    return v0
.end method

.method public isMustBeShowRunningAppList()Z
    .registers 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mustBeShowRunningAppList:Z

    return v0
.end method

.method public isService()Z
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->service:Z

    return v0
.end method

.method public isSizeComputed()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sizeComputed:Z

    return v0
.end method

.method public isSystemApp()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemApp:Z

    return v0
.end method

.method public isSystemAppUpdate()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemAppUpdate:Z

    return v0
.end method

.method public isTask()Z
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->task:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "appIcon"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    return-void
.end method

.method public setAppName(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "appName"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    .line 141
    return-void
.end method

.method public setCanClearData(Z)V
    .registers 2
    .parameter "canClearData"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canClearData:Z

    .line 374
    return-void
.end method

.method public setCodeSize(J)V
    .registers 3
    .parameter "codeSize"

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    .line 267
    return-void
.end method

.method public setCpuUsage(F)V
    .registers 8
    .parameter "cpuUsage"

    .prologue
    .line 99
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    .line 101
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 103
    .local v0, f:Ljava/util/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%2.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDataSize(J)V
    .registers 3
    .parameter "storageData"

    .prologue
    .line 243
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    .line 244
    return-void
.end method

.method public setGetIntentActionAfterForceStop(Z)V
    .registers 2
    .parameter "getIntentActionAfterForceStop"

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getIntentActionAfterForceStop:Z

    .line 426
    return-void
.end method

.method public setHideRunningAppList(Z)V
    .registers 2
    .parameter "hideRunningAppList"

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->hideRunningAppList:Z

    .line 410
    return-void
.end method

.method public setInstalledTime(J)V
    .registers 3
    .parameter "installedTime"

    .prologue
    .line 433
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->installedTime:J

    .line 434
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->intent:Landroid/content/Intent;

    .line 354
    return-void
.end method

.method public setMemUsage(J)V
    .registers 10
    .parameter "memUsage"

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    .line 219
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 221
    .local v0, f:Ljava/util/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%2.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-float v5, p1

    const/high16 v6, 0x4480

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setMustBeShowRunningAppList(Z)V
    .registers 2
    .parameter "mustBeShowRunningAppList"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mustBeShowRunningAppList:Z

    .line 418
    return-void
.end method

.method public setPid(I)V
    .registers 2
    .parameter "pid"

    .prologue
    .line 126
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    .line 127
    return-void
.end method

.method public setProcessStartTime(J)V
    .registers 3
    .parameter "processStartTime"

    .prologue
    .line 441
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processStartTime:J

    .line 442
    return-void
.end method

.method public setRecentTaskOrder(I)V
    .registers 2
    .parameter "recentTaskOrder"

    .prologue
    .line 449
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->recentTaskOrder:I

    .line 450
    return-void
.end method

.method public setService(Z)V
    .registers 2
    .parameter "service"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->service:Z

    .line 398
    return-void
.end method

.method public setSizeComputed(Z)V
    .registers 2
    .parameter "sizeComputed"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sizeComputed:Z

    .line 358
    return-void
.end method

.method public setStoredExternalStorage(I)V
    .registers 2
    .parameter "storedExternalStorage"

    .prologue
    .line 401
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->storedExternalStorage:I

    .line 402
    return-void
.end method

.method public setSystemApp(Z)V
    .registers 2
    .parameter "systemApp"

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemApp:Z

    .line 382
    return-void
.end method

.method public setSystemAppUpdate(Z)V
    .registers 2
    .parameter "systemAppUpdate"

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemAppUpdate:Z

    .line 386
    return-void
.end method

.method public setTask(Z)V
    .registers 2
    .parameter "task"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->task:Z

    .line 394
    return-void
.end method
