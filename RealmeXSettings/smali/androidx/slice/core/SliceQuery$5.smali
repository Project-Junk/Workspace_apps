.class final Landroidx/slice/core/SliceQuery$5;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/slice/core/SliceQuery$Filter<",
        "Landroidx/slice/SliceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$subtype:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$5;->val$format:Ljava/lang/String;

    iput-object p2, p0, Landroidx/slice/core/SliceQuery$5;->val$subtype:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Landroidx/slice/SliceItem;)Z
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$5;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$5;->val$subtype:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 0

    .line 196
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceQuery$5;->filter(Landroidx/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
