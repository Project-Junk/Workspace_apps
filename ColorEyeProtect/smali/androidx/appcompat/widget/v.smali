.class public Landroidx/appcompat/widget/v;
.super Landroid/widget/Spinner;

# interfaces
.implements Landroidx/core/f/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/v$c;,
        Landroidx/appcompat/widget/v$a;,
        Landroidx/appcompat/widget/v$e;,
        Landroidx/appcompat/widget/v$b;,
        Landroidx/appcompat/widget/v$d;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field a:I

.field final b:Landroid/graphics/Rect;

.field private final d:Landroidx/appcompat/widget/e;

.field private final e:Landroid/content/Context;

.field private f:Landroidx/appcompat/widget/ag;

.field private g:Landroid/widget/SpinnerAdapter;

.field private final h:Z

.field private i:Landroidx/appcompat/widget/v$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/v;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/a$a;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    sget-object v0, Landroidx/appcompat/a$j;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/av;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/widget/e;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz p5, :cond_0

    new-instance v2, Landroidx/appcompat/view/d;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    :goto_0
    iput-object v2, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    goto :goto_1

    :cond_0
    sget p5, Landroidx/appcompat/a$j;->Spinner_popupTheme:I

    invoke-virtual {v0, p5, v1}, Landroidx/appcompat/widget/av;->g(II)I

    move-result p5

    if-eqz p5, :cond_1

    new-instance v2, Landroidx/appcompat/view/d;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    :goto_1
    const/4 p5, -0x1

    const/4 v2, 0x0

    if-ne p4, p5, :cond_4

    :try_start_0
    sget-object p5, Landroidx/appcompat/widget/v;->c:[I

    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p4, v3

    :cond_2
    if-eqz p5, :cond_4

    :goto_2
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p5, v2

    goto :goto_4

    :catch_1
    move-exception v3

    move-object p5, v2

    :goto_3
    :try_start_2
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p5, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw p0

    :cond_4
    :goto_5
    packed-switch p4, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    new-instance p4, Landroidx/appcompat/widget/v$c;

    iget-object p5, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    invoke-direct {p4, p0, p5, p2, p3}, Landroidx/appcompat/widget/v$c;-><init>(Landroidx/appcompat/widget/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object p5, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    sget-object v3, Landroidx/appcompat/a$j;->Spinner:[I

    invoke-static {p5, p2, v3, p3, v1}, Landroidx/appcompat/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/av;

    move-result-object p5

    sget v1, Landroidx/appcompat/a$j;->Spinner_android_dropDownWidth:I

    const/4 v3, -0x2

    invoke-virtual {p5, v1, v3}, Landroidx/appcompat/widget/av;->f(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/v;->a:I

    sget v1, Landroidx/appcompat/a$j;->Spinner_android_popupBackground:I

    invoke-virtual {p5, v1}, Landroidx/appcompat/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroidx/appcompat/widget/v$c;->a(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroidx/appcompat/a$j;->Spinner_android_prompt:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/av;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroidx/appcompat/widget/v$c;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p5}, Landroidx/appcompat/widget/av;->b()V

    iput-object p4, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    new-instance p5, Landroidx/appcompat/widget/v$1;

    invoke-direct {p5, p0, p0, p4}, Landroidx/appcompat/widget/v$1;-><init>(Landroidx/appcompat/widget/v;Landroid/view/View;Landroidx/appcompat/widget/v$c;)V

    iput-object p5, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/ag;

    goto :goto_6

    :pswitch_1
    new-instance p4, Landroidx/appcompat/widget/v$a;

    invoke-direct {p4, p0}, Landroidx/appcompat/widget/v$a;-><init>(Landroidx/appcompat/widget/v;)V

    iput-object p4, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    iget-object p4, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    sget p5, Landroidx/appcompat/a$j;->Spinner_android_prompt:I

    invoke-virtual {v0, p5}, Landroidx/appcompat/widget/av;->d(I)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Landroidx/appcompat/widget/v$e;->a(Ljava/lang/CharSequence;)V

    :goto_6
    sget p4, Landroidx/appcompat/a$j;->Spinner_android_entries:I

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/av;->f(I)[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_5

    new-instance p5, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {p5, p1, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget p1, Landroidx/appcompat/a$g;->support_simple_spinner_dropdown_item:I

    invoke-virtual {p5, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, p5}, Landroidx/appcompat/widget/v;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/av;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/v;->h:Z

    iget-object p1, p0, Landroidx/appcompat/widget/v;->g:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/appcompat/widget/v;->g:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v2, p0, Landroidx/appcompat/widget/v;->g:Landroid/widget/SpinnerAdapter;

    :cond_6
    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v7, v0

    move-object v6, v5

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v6, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v3, v6, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v6, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    add-int/2addr v7, p1

    :cond_4
    return v7
.end method

.method a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getTextAlignment()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroidx/appcompat/widget/v$e;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    const/4 v0, -0x1

    invoke-interface {p0, v0, v0}, Landroidx/appcompat/widget/v$e;->a(II)V

    :goto_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->c()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0}, Landroidx/appcompat/widget/v$e;->f()I

    move-result p0

    return p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0}, Landroidx/appcompat/widget/v$e;->a_()I

    move-result p0

    return p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownWidth()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/appcompat/widget/v;->a:I

    return p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/v$e;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    return-object p0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0}, Landroidx/appcompat/widget/v$e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    return-object p0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0}, Landroidx/appcompat/widget/v$e;->a()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

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

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/v$e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0}, Landroidx/appcompat/widget/v$e;->c()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/v;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/v;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroidx/appcompat/widget/v$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v$d;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Landroidx/appcompat/widget/v$d;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/v$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/v$2;-><init>(Landroidx/appcompat/widget/v;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/v$d;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/v$d;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0}, Landroidx/appcompat/widget/v$e;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Landroidx/appcompat/widget/v$d;->a:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/ag;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ag;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {v0}, Landroidx/appcompat/widget/v$e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/v;->h:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/v;->g:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroid/content/Context;

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    new-instance v1, Landroidx/appcompat/widget/v$b;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroidx/appcompat/widget/v$b;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {p0, v1}, Landroidx/appcompat/widget/v$e;->a(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/v$e;->c(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/v$e;->b(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/v$e;->a(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/v;->a:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/v$e;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/v$e;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method