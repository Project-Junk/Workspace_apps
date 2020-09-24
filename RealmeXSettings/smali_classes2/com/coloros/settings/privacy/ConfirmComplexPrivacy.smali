.class public Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;
.super Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;
.source "ConfirmComplexPrivacy.java"


# instance fields
.field private e:Z

.field private f:Lcom/color/support/widget/ColorEditText;

.field private g:Landroid/view/MenuItem;

.field private h:Z

.field private i:Lcom/color/support/widget/ColorNumericKeyboard;

.field private j:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h:Z

    return-void
.end method

.method static synthetic a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/high16 v1, -0x40000000    # -2.0f

    sub-float/2addr p0, v0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const v0, 0x3fa66666    # 1.3f

    sub-float v0, p0, v0

    mul-float/2addr v0, p0

    return v0

    :cond_1
    const v0, 0x3f19999a    # 0.6f

    sub-float v0, p0, v0

    const v1, 0x406ccccd    # 3.7f

    sub-float/2addr p0, v1

    mul-float/2addr v0, p0

    const p0, 0x3e3851ec    # 0.18f

    add-float/2addr v0, p0

    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorNumericKeyboard;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    return-object p0
.end method

.method private b(Z)V
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setInputEnable enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mSoftInputAlwaysHide = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmNumberPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h:Z

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 225
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestLayout()V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    :cond_1
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    const-string v0, "input_method"

    .line 235
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 238
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 239
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 242
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz v0, :cond_4

    .line 246
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Landroid/view/MenuItem;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->g:Landroid/view/MenuItem;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->g:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120bdb

    invoke-virtual {p0, v1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->c()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    .line 128
    iget v1, v0, Lcom/coloros/settings/privacy/a/g$d;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 129
    iput-boolean v3, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->e:Z

    goto :goto_0

    .line 130
    :cond_0
    iget v0, v0, Lcom/coloros/settings/privacy/a/g$d;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 131
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->e:Z

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->finish()V

    :goto_0
    const v0, 0x7f0a0190

    .line 136
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(I)V

    const v0, 0x7f0a02eb

    .line 138
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a:Landroid/widget/TextView;

    const v0, 0x7f0a02e9

    .line 139
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->b:Landroid/widget/TextView;

    const v0, 0x7f0a02a0

    .line 140
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->c:Landroid/widget/TextView;

    const v0, 0x7f0a04ba

    .line 141
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorEditText;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    const v0, 0x7f0a0362

    .line 142
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 143
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->e:Z

    if-eqz v0, :cond_2

    .line 144
    iput-boolean v3, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h:Z

    .line 145
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, v0, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v1, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$3;-><init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    goto :goto_1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i:Lcom/color/support/widget/ColorNumericKeyboard;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setVisibility(I)V

    .line 1187
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$4;-><init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1198
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$5;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$5;-><init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected final a(II)V
    .locals 2

    .line 287
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    .line 288
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->d:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 290
    invoke-direct {p0, p2}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->b(Z)V

    return-void

    .line 292
    :cond_0
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->d:I

    const-string v0, ""

    if-ne p1, p2, :cond_2

    .line 293
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->j:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 2075
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->j:Landroid/animation/ValueAnimator;

    .line 2076
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2077
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2090
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2117
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->j:Landroid/animation/ValueAnimator;

    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 295
    invoke-direct {p0, p2}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->b(Z)V

    const/4 p1, 0x3

    .line 296
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;I)Z

    return-void

    .line 297
    :cond_2
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->d:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 298
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 299
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->b(Z)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method protected final b()I
    .locals 1

    const v0, 0x7f0d011e

    return v0
.end method

.method public final d()V
    .locals 3

    const-string v0, "ConfirmNumberPrivacy"

    const-string v1, "hideKeyboard "

    .line 305
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input_method"

    .line 306
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 307
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 308
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g()V

    .line 180
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i()V

    .line 181
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->b(Z)V

    :cond_0
    return-void
.end method

.method protected final h()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->f:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0491

    .line 259
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->g:Landroid/view/MenuItem;

    .line 260
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->g:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 261
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->i()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 277
    invoke-super {p0, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 274
    :pswitch_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h()V

    return v1

    :pswitch_1
    const/4 p1, 0x0

    .line 269
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->b(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->e()V

    .line 271
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->finish()V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a0490
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
