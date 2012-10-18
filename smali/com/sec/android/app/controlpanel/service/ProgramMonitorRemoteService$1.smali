.class Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 69
    const-string v4, "ProgramMonitorRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_22
    if-nez p2, :cond_25

    .line 130
    :cond_24
    :goto_24
    return-void

    .line 72
    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v4, "ProgramMonitorRemoteService.UPDATE_RUNNING_COUNT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 76
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 77
    const-string v4, "ProgramMonitorRemoteService"

    const-string v5, "onReceive() UPDATE_RUNNING_APPLICATION_COUNT"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_42
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->updateRunningApplicationListInfo()V

    goto :goto_24

    .line 81
    :cond_48
    const-string v4, "ProgramMonitorRemoteService.RUNNING_COUNT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 83
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 84
    const-string v4, "ProgramMonitorRemoteService"

    const-string v5, "onReceive() RUNNING_APPS_COUNT"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_61
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getRunningApplicationCount()I

    move-result v1

    .line 88
    .local v1, count:I
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 89
    const-string v4, "ProgramMonitorRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() getRunningApplicationCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_89
    new-instance v3, Landroid/content/Intent;

    const-string v4, "ProgramMonitorRemoteService.RETURN_RUNNING_COUNT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, i:Landroid/content/Intent;
    const-string v4, "extra_running_count"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->initCPUUsage()V

    goto :goto_24

    .line 96
    .end local v1           #count:I
    .end local v3           #i:Landroid/content/Intent;
    :cond_9e
    const-string v4, "ProgramMonitorRemoteService.CPU_USAGE_WARN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 98
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 99
    const-string v4, "ProgramMonitorRemoteService"

    const-string v5, "onReceive() CPU_USAGE_WARN  test_count="

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_b7
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->updateCPUUsage()V

    .line 102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v2, data:Landroid/os/Bundle;
    const-string v4, "warning"

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->isCPUWarning()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v4, "warning_level"

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getCPUWarningLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v4, "warning_msg"

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/service/ProgramMonitorRemoteService;->getCPUWarningMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "ProgramMonitorRemoteService.RETURN_CPU_USAGE_WARN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_24
.end method
