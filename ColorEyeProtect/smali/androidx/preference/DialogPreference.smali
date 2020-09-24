.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroidx/preference/m$a;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/a/g;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Landroidx/preference/m$h;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/preference/m$h;->DialogPreference_dialogTitle:I

    sget p3, Landroidx/preference/m$h;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    iget-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    :cond_0
    sget p2, Landroidx/preference/m$h;->DialogPreference_dialogMessage:I

    sget p3, Landroidx/preference/m$h;->DialogPreference_android_dialogMessage:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    sget p2, Landroidx/preference/m$h;->DialogPreference_dialogIcon:I

    sget p3, Landroidx/preference/m$h;->DialogPreference_android_dialogIcon:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    sget p2, Landroidx/preference/m$h;->DialogPreference_positiveButtonText:I

    sget p3, Landroidx/preference/m$h;->DialogPreference_android_positiveButtonText:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    sget p2, Landroidx/preference/m$h;->DialogPreference_negativeButtonText:I

    sget p3, Landroidx/preference/m$h;->DialogPreference_android_negativeButtonText:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    sget p2, Landroidx/preference/m$h;->DialogPreference_dialogLayout:I

    sget p3, Landroidx/preference/m$h;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/DialogPreference;->f:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Landroidx/preference/DialogPreference;->f:I

    return p0
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/Preference;)V

    return-void
.end method
