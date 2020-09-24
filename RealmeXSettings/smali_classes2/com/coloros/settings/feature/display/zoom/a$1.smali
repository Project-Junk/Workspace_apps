.class final Lcom/coloros/settings/feature/display/zoom/a$1;
.super Ljava/lang/Object;
.source "ColorPreviewPagerAdapter.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/zoom/a;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/feature/display/zoom/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/zoom/a;II)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/a$1;->c:Lcom/coloros/settings/feature/display/zoom/a;

    iput p2, p0, Lcom/coloros/settings/feature/display/zoom/a$1;->a:I

    iput p3, p0, Lcom/coloros/settings/feature/display/zoom/a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-static {p2}, Lcom/coloros/settings/feature/display/zoom/a;->a(Landroid/view/View;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewStub;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/a$1;->c:Lcom/coloros/settings/feature/display/zoom/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/zoom/a;->a(Lcom/coloros/settings/feature/display/zoom/a;)[[Z

    move-result-object p1

    iget p2, p0, Lcom/coloros/settings/feature/display/zoom/a$1;->a:I

    aget-object p1, p1, p2

    iget p2, p0, Lcom/coloros/settings/feature/display/zoom/a$1;->b:I

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    return-void
.end method
