.class public Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;
.super Ljava/lang/Object;
.source "PackageSizeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I
    .registers 10
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 10
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_c

    :cond_a
    move v4, v5

    .line 21
    :cond_b
    :goto_b
    return v4

    .line 12
    :cond_c
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 14
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v0

    .line 15
    .local v0, aSize:J
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v2

    .line 16
    .local v2, bSize:J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_b

    .line 18
    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    .line 19
    const/4 v4, 0x0

    goto :goto_b

    :cond_26
    move v4, v5

    .line 21
    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    check-cast p1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method
