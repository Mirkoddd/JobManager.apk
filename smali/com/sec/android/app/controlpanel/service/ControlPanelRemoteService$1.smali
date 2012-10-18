.class Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;
.super Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;
.source "ControlPanelRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

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
    .line 132
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 133
    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningLevel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$500(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$500(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

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
    .line 138
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 139
    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$600(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$600(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

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
    .line 63
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 64
    const-string v2, "ControlPanelRemoteService"

    const-string v3, "getRunningApplicationCount() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_11
    const/4 v1, 0x0

    .line 67
    .local v1, size:I
    :try_start_12
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningApplicationList()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$102(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;Ljava/util/List;)Ljava/util/List;

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$100(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_52

    move-result v1

    .line 73
    :goto_2f
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 74
    const-string v2, "ControlPanelRemoteService"

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

    .line 75
    :cond_51
    return v1

    .line 70
    :catch_52
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public initCPUUsage()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 105
    const-string v1, "ControlPanelRemoteService"

    const-string v2, "initCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->init()V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    .line 112
    :goto_23
    return-void

    .line 109
    :catch_24
    move-exception v0

    .line 110
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
    .line 126
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 127
    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCPUWarning() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$400(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$400(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Z

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
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, bRet:Z
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->isUpdateRunningApplicationListOnProgress()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_32

    move-result v0

    .line 97
    :goto_f
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 98
    const-string v2, "ControlPanelRemoteService"

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

    .line 100
    :cond_31
    return v0

    .line 94
    :catch_32
    move-exception v1

    .line 95
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
    .line 115
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 116
    const-string v1, "ControlPanelRemoteService"

    const-string v2, "updateCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #getter for: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    #calls: Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->calcCPUUsage()V
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$300(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_20

    .line 123
    :goto_1f
    return-void

    .line 120
    :catch_20
    move-exception v0

    .line 121
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
    .line 79
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 80
    const-string v1, "ControlPanelRemoteService"

    const-string v2, "updateRunningApplicationListInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->updateRunningApplicationListInfo()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 86
    :goto_1e
    return-void

    .line 83
    :catch_1f
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
