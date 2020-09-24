.class Landroidx/appcompat/widget/x$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/x$a;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/x$a;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/x;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/appcompat/widget/x$a$a;->a:Landroidx/appcompat/widget/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/x$a$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroidx/appcompat/widget/x$a$a;->c:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/x$a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/x$a$a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
