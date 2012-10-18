.class public Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
.super Ljava/lang/Object;
.source "PackageInfoItemCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ecd227026L


# instance fields
.field items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->items:Ljava/util/HashMap;

    .line 13
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->items:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15
    .parameter "packageName"
    .parameter "appName"
    .parameter "codeSize"
    .parameter "dataSize"

    .prologue
    .line 16
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->items:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
