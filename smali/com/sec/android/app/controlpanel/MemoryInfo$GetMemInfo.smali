.class Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;
.super Landroid/os/AsyncTask;
.source "MemoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMemInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/MemoryInfo;Ljava/util/List;)V
    .registers 3
    .parameter
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
    .line 160
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->list:Ljava/util/List;

    .line 162
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    #getter for: Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 167
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->list:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/controlpanel/MemoryInfo;->updateUsedMem(Ljava/util/List;)V

    .line 168
    monitor-exit v1

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 168
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->refresh()V

    .line 175
    return-void
.end method
