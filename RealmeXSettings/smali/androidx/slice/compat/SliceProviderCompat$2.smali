.class final Landroidx/slice/compat/SliceProviderCompat$2;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"

# interfaces
.implements Landroidx/slice/SliceItemHolder$HolderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/compat/SliceProviderCompat;->parseSlice(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 426
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V
    .locals 2

    .line 429
    iget-object p2, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    instance-of p2, p2, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p2, :cond_0

    .line 430
    iget-object p2, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast p2, Landroidx/core/graphics/drawable/IconCompat;

    .line 431
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 432
    invoke-virtual {p2}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 433
    iput-object p2, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    :cond_0
    return-void
.end method
