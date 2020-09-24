.class Landroidx/core/f/a/d$b;
.super Landroidx/core/f/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/f/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/f/a/d$a;-><init>(Landroidx/core/f/a/d;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Landroidx/core/f/a/d$b;->a:Landroidx/core/f/a/d;

    invoke-virtual {p0, p1}, Landroidx/core/f/a/d;->b(I)Landroidx/core/f/a/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/f/a/c;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method
