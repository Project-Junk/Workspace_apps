.class public final Lcom/google/android/setupcompat/template/FooterButton;
.super Ljava/lang/Object;
.source "FooterButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/template/FooterButton$a;,
        Lcom/google/android/setupcompat/template/FooterButton$b;
    }
.end annotation


# instance fields
.field final a:I

.field b:Ljava/lang/CharSequence;

.field c:Z

.field d:I

.field e:I

.field public f:Landroid/view/View$OnClickListener;

.field g:Landroid/view/View$OnClickListener;

.field private h:Lcom/google/android/setupcompat/template/FooterButton$b;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->c:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->d:I

    .line 54
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->i:I

    .line 57
    sget-object v1, Lcom/google/android/setupcompat/b$e;->SucFooterButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterButton_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->b:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->f:Landroid/view/View$OnClickListener;

    .line 60
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterButton_sucButtonType:I

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    const/16 v1, 0x8

    if-gt p2, v1, :cond_0

    .line 61
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->a:I

    .line 63
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterButton_android_theme:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 1263
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a ButtonType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->c:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->d:I

    .line 54
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->i:I

    .line 81
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->b:Ljava/lang/CharSequence;

    .line 82
    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->f:Landroid/view/View$OnClickListener;

    .line 83
    iput p3, p0, Lcom/google/android/setupcompat/template/FooterButton;->a:I

    .line 84
    iput p4, p0, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IIB)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 268
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "OTHER"

    return-object v0

    :pswitch_0
    const-string v0, "STOP"

    return-object v0

    :pswitch_1
    const-string v0, "SKIP"

    return-object v0

    :pswitch_2
    const-string v0, "OPT_IN"

    return-object v0

    :pswitch_3
    const-string v0, "NEXT"

    return-object v0

    :pswitch_4
    const-string v0, "DONE"

    return-object v0

    :pswitch_5
    const-string v0, "CLEAR"

    return-object v0

    :pswitch_6
    const-string v0, "CANCEL"

    return-object v0

    :pswitch_7
    const-string v0, "ADD_ANOTHER"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x2710
    .end annotation

    .line 297
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2089
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->b:Ljava/lang/CharSequence;

    .line 298
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterButton;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_onClickCount"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->i:I

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 150
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->d:I

    .line 151
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->h:Lcom/google/android/setupcompat/template/FooterButton$b;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$b;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 163
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final a(Lcom/google/android/setupcompat/template/FooterButton$b;)V
    .locals 1
    .param p1    # Lcom/google/android/setupcompat/template/FooterButton$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->h:Lcom/google/android/setupcompat/template/FooterButton$b;

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Event listener of footer button may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->b:Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->h:Lcom/google/android/setupcompat/template/FooterButton$b;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$b;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 133
    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->c:Z

    .line 134
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->h:Lcom/google/android/setupcompat/template/FooterButton$b;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 190
    iget v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->i:I

    .line 191
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
