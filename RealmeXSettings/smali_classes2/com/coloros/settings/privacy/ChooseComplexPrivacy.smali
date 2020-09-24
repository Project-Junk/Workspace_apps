.class public Lcom/coloros/settings/privacy/ChooseComplexPrivacy;
.super Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;
.source "ChooseComplexPrivacy.java"


# instance fields
.field private l:Z

.field private m:Lcom/color/support/widget/ColorEditText;

.field private n:Lcom/color/support/widget/ColorEditText;

.field private o:Lcom/color/support/widget/ColorNumericKeyboard;

.field private p:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)Lcom/color/support/widget/ColorNumericKeyboard;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    return-object p0
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "input_method"

    .line 114
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)Landroid/view/MenuItem;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    return-object p0
.end method

.method private c()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 227
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f120cae

    return v0

    :cond_0
    const v0, 0x7f1210d9

    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 287
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c:I

    const/16 v1, 0x39

    const v2, 0x7f120ca9

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_9

    .line 289
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_1

    if-le v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 296
    :cond_2
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_9

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v4, v0, :cond_8

    .line 304
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_7

    const/16 v8, 0x7f

    if-le v7, v8, :cond_3

    goto :goto_4

    :cond_3
    if-lt v7, v3, :cond_4

    if-le v7, v1, :cond_6

    :cond_4
    const/16 v8, 0x41

    if-lt v7, v8, :cond_5

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/16 v8, 0x61

    if-lt v7, v8, :cond_6

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 306
    :cond_7
    :goto_4
    invoke-virtual {p0, v2}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/2addr v5, v6

    if-nez v5, :cond_9

    const p1, 0x7f120cb2

    .line 319
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c:I

    return v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 10

    .line 232
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const v0, 0x7f120fab

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    if-eqz p1, :cond_6

    .line 237
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 238
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void

    .line 240
    :cond_0
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 241
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    const p2, 0x7f120c4d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 243
    :cond_1
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 244
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    if-eqz p1, :cond_6

    .line 248
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 249
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void

    .line 251
    :cond_2
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const p2, 0x7f1210d8

    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->j:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    const p2, 0x7f120fa9

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 255
    new-array p1, v3, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->j:Landroid/widget/TextView;

    aput-object p2, p1, v1

    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 256
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    new-array v9, v3, [Landroid/view/View;

    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->i:Landroid/widget/TextView;

    aput-object p1, v9, v1

    invoke-static/range {v4 .. v9}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    .line 258
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 259
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v2, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->n:Lcom/color/support/widget/ColorEditText;

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    aput-object v0, p2, v3

    invoke-static {p1, v3, v1, v3, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v3, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->n:Lcom/color/support/widget/ColorEditText;

    aput-object v0, p2, v1

    invoke-static {p1, v3, v1, v3, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 265
    :goto_0
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v2, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    aput-object v0, p2, v3

    invoke-static {p1, v3, v3, v1, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 267
    new-array p1, v3, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    aput-object p2, p1, v1

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void

    .line 269
    :cond_4
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    .line 270
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    if-eqz p1, :cond_5

    .line 272
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 273
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 275
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    const v0, 0x7f120faa

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 277
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v3, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->n:Lcom/color/support/widget/ColorEditText;

    aput-object v0, p2, v1

    invoke-static {p1, v1, v1, v3, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 279
    new-array p1, v3, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->j:Landroid/widget/TextView;

    aput-object p2, p1, v1

    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 280
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    aput-object v0, p2, v3

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->i:Landroid/widget/TextView;

    aput-object v0, p2, v2

    invoke-static {p1, v1, v3, v1, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 282
    new-array p1, v3, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    aput-object p2, p1, v1

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method protected final b()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 342
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 343
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0, v3, v1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 332
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_5

    const/16 v3, 0x10

    if-gt v1, v3, :cond_5

    .line 334
    invoke-direct {p0, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 336
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(ILjava/lang/String;)V

    .line 348
    :cond_5
    :goto_1
    iput-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->e:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d021f

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    const v2, 0x7f0a0493

    .line 65
    invoke-virtual {p0, p1, v2}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(Landroid/view/View;I)V

    const p1, 0x7f0a05d7

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f1210fc

    .line 67
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a02eb

    .line 69
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->g:Landroid/widget/TextView;

    const p1, 0x7f0a02ec

    .line 70
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->j:Landroid/widget/TextView;

    const p1, 0x7f0a02f2

    .line 71
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    const p1, 0x7f0a02f3

    .line 72
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->k:Landroid/widget/TextView;

    const p1, 0x7f0a04a0

    .line 73
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->i:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04ba

    .line 76
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorEditText;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    const p1, 0x7f0a04bb

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorEditText;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->n:Lcom/color/support/widget/ColorEditText;

    .line 78
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->c:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->l:Z

    const p1, 0x7f0a0362

    .line 80
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 81
    iget-boolean p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->l:Z

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, 0x20000

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p1, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 87
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)V

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard;->requestFocus()Z

    goto :goto_1

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->o:Lcom/color/support/widget/ColorNumericKeyboard;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setVisibility(I)V

    .line 1127
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)V

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1138
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->m:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;-><init>(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)V

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    invoke-virtual {p0, v2, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0490

    .line 201
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const v0, 0x7f0a0492

    .line 202
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    .line 203
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->p:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0490

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0492

    if-eq v0, v1, :cond_0

    .line 217
    invoke-super {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->b()V

    return v2

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->finish()V

    return v2
.end method

.method public onPause()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onPause()V

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onResume()V

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0, v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->a(Z)V

    return-void
.end method
