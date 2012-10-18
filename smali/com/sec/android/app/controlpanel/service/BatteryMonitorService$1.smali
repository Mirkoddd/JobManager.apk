.class Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;
.super Ljava/lang/Object;
.source "BatteryMonitorService.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .registers 2
    .parameter "o"

    .prologue
    .line 160
    return-void
.end method
