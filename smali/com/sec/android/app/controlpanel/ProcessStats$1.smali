.class final Lcom/sec/android/app/controlpanel/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Lcom/sec/android/app/controlpanel/ProcessStats$Stats;)I
    .registers 9
    .parameter "sta"
    .parameter "stb"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 233
    iget v4, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v5, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v0, v4, v5

    .line 234
    .local v0, ta:I
    iget v4, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v5, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v1, v4, v5

    .line 235
    .local v1, tb:I
    if-eq v0, v1, :cond_15

    .line 236
    if-le v0, v1, :cond_13

    .line 244
    :cond_12
    :goto_12
    return v2

    :cond_13
    move v2, v3

    .line 236
    goto :goto_12

    .line 238
    :cond_15
    iget-boolean v4, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    iget-boolean v5, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    if-eq v4, v5, :cond_21

    .line 239
    iget-boolean v4, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    if-nez v4, :cond_12

    move v2, v3

    goto :goto_12

    .line 241
    :cond_21
    iget-boolean v4, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    if-eq v4, v5, :cond_2d

    .line 242
    iget-boolean v4, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    if-nez v4, :cond_12

    move v2, v3

    goto :goto_12

    .line 244
    :cond_2d
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 231
    check-cast p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .end local p1
    check-cast p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/ProcessStats$1;->compare(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Lcom/sec/android/app/controlpanel/ProcessStats$Stats;)I

    move-result v0

    return v0
.end method
