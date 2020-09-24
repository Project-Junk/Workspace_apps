.class Landroidx/appcompat/widget/au;
.super Landroidx/appcompat/widget/am;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/am;-><init>(Landroid/content/res/Resources;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/appcompat/widget/au;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/am;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/au;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/al;->a()Landroidx/appcompat/widget/al;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Landroidx/appcompat/widget/al;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    :cond_0
    return-object v0
.end method
