.class Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;
.super Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;
.source "ProgramMonitorRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCPUWarningLevel()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 328
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningLevel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$500(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_level:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$500(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUWarningMessage()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 334
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$600(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning_msg:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$600(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunningApplicationCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 257
    const-string v2, "ProgramMonitorRemoteService"

    const-string v3, "getRunningApplicationCount() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_11
    const/4 v1, 0x0

    .line 260
    .local v1, size:I
    :try_start_12
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningApplicationList()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$102(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;Ljava/util/List;)Ljava/util/List;

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$100(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->runningItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$100(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_5a

    move-result v1

    .line 268
    :cond_37
    :goto_37
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 269
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

    .line 270
    :cond_59
    return v1

    .line 265
    :catch_5a
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method public initCPUUsage()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 300
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "initCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->init()V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    .line 307
    :goto_23
    return-void

    .line 304
    :catch_24
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public isCPUWarning()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 322
    const-string v0, "ProgramMonitorRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCPUWarning() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$400(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->cpu_warning:Z
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$400(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Z

    move-result v0

    return v0
.end method

.method public isUpdateRunningApplicationListOnProgress()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, bRet:Z
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->isUpdateRunningApplicationListOnProgress()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_32

    move-result v0

    .line 292
    :goto_f
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 293
    const-string v2, "ProgramMonitorRemoteService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUpdateRunningApplicationListOnProgress() bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_31
    return v0

    .line 289
    :catch_32
    move-exception v1

    .line 290
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public updateCPUUsage()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 311
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "updateCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    #calls: Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->calcCPUUsage()V
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$300(Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_20

    .line 318
    :goto_1f
    return-void

    .line 315
    :catch_20
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public updateRunningApplicationListInfo()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 275
    const-string v1, "ProgramMonitorRemoteService"

    const-string v2, "updateRunningApplicationListInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$2;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->updateRunningApplicationListInfo()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 281
    :goto_1e
    return-void

    .line 278
    :catch_1f
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
