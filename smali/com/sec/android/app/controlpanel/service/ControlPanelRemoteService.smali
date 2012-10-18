.class public Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;
.super Landroid/app/Service;
.source "ControlPanelRemoteService.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;


# instance fields
.field private cpu_warning:Z

.field private cpu_warning_level:Ljava/lang/String;

.field private cpu_warning_msg:Ljava/lang/String;

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

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
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;-><init>(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->calcCPUUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    return-object v0
.end method

.method private calcCPUUsage()V
    .registers 15

    .prologue
    .line 145
    const/4 v10, 0x0

    .line 146
    .local v10, total:F
    const/4 v7, 0x0

    .line 147
    .local v7, topCpuUsage:F
    const-string v8, ""

    .line 148
    .local v8, topRunningName:Ljava/lang/String;
    const-string v9, ""

    .line 149
    .local v9, topRunningPackageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 154
    .local v5, numRunning:I
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    if-eqz v11, :cond_67

    .line 155
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

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

    .line 156
    .local v0, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage(I)F

    move-result v2

    .line 157
    .local v2, cpuUsage:F
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 158
    const-string v11, "ControlPanelRemoteService"

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

    .line 160
    :cond_55
    add-float/2addr v10, v2

    .line 161
    cmpl-float v11, v2, v7

    if-lez v11, :cond_5f

    .line 162
    move v7, v2

    .line 163
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 165
    :cond_5f
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_11

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 171
    .end local v0           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v2           #cpuUsage:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_67
    if-lez v5, :cond_7f

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 174
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v11, 0x2000

    :try_start_73
    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 176
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_7e} :catch_13b

    move-result-object v8

    .line 186
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_7f
    :goto_7f
    const/high16 v11, 0x40a0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_14d

    .line 187
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    .line 188
    invoke-direct {p0, v10}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getWarningLevel(F)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    .line 189
    invoke-direct {p0, v8, v5}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getWarningMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    .line 193
    :goto_94
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b6

    .line 194
    const-string v11, "ControlPanelRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() cpu_warning:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_b6
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 196
    const-string v11, "ControlPanelRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() cpu_warning_level:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_d8
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_fa

    .line 198
    const-string v11, "ControlPanelRemoteService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcCPUUsage() cpu_warning_msg:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_fa
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 200
    const-string v11, "ControlPanelRemoteService"

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

    .line 201
    :cond_11a
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_13a

    .line 202
    const-string v11, "ControlPanelRemoteService"

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

    .line 203
    :cond_13a
    return-void

    .line 177
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_13b
    move-exception v3

    .line 178
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 179
    const-string v11, "ControlPanelRemoteService"

    const-string v12, "calcCPUUsage() NameNotFoundException"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7f

    .line 191
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_14d
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    goto/16 :goto_94
.end method

.method private getWarningLevel(F)Ljava/lang/String;
    .registers 3
    .parameter "totalCpuUsage"

    .prologue
    .line 206
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 207
    const-string v0, "level2"

    .line 211
    :goto_8
    return-object v0

    .line 208
    :cond_9
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    .line 209
    const-string v0, "level1"

    goto :goto_8

    .line 211
    :cond_12
    const-string v0, ""

    goto :goto_8
.end method

.method private getWarningMsg(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "topRunningName"
    .parameter "numRunning"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v1, 0x1

    if-le p2, v1, :cond_32

    .line 220
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 222
    :cond_32
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 56
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 57
    const-string v0, "ControlPanelRemoteService"

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

    .line 58
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    const-string v0, "ControlPanelRemoteService"

    const-string v1, "getRunningApplicationCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_f
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 52
    return-void
.end method
