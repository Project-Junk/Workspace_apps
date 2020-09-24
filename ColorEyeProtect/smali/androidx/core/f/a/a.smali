.class public final Landroidx/core/f/a/a;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private final a:I

.field private final b:Landroidx/core/f/a/c;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/f/a/c;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Landroidx/core/f/a/a;->a:I

    iput-object p2, p0, Landroidx/core/f/a/a;->b:Landroidx/core/f/a/c;

    iput p3, p0, Landroidx/core/f/a/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    iget v1, p0, Landroidx/core/f/a/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/core/f/a/a;->b:Landroidx/core/f/a/c;

    iget p0, p0, Landroidx/core/f/a/a;->c:I

    invoke-virtual {v0, p0, p1}, Landroidx/core/f/a/c;->a(ILandroid/os/Bundle;)Z

    return-void
.end method
