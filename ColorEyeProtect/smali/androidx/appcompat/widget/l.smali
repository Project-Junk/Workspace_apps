.class public Landroidx/appcompat/widget/l;
.super Landroid/widget/ImageButton;

# interfaces
.implements Landroidx/core/f/s;
.implements Landroidx/core/widget/l;


# instance fields
.field private final a:Landroidx/appcompat/widget/e;

.field private final b:Landroidx/appcompat/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/a$a;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/as;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    iget-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/m;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/m;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/m;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->d()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {v0}, Landroidx/appcompat/widget/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->d()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->d()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m;->a(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->d()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
