.class public Lcom/android/settings/wifi/LinkablePreference;
.super Landroidx/preference/Preference;
.source "LinkablePreference.java"


# instance fields
.field private a:Lcom/android/settings/f$a;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040329

    const v1, 0x101008e

    .line 51
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f080727

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setIcon(I)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/f$a;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    .line 104
    iput-object p2, p0, Lcom/android/settings/wifi/LinkablePreference;->c:Ljava/lang/CharSequence;

    .line 105
    iput-object p3, p0, Lcom/android/settings/wifi/LinkablePreference;->a:Lcom/android/settings/f$a;

    .line 107
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->a:Lcom/android/settings/f$a;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    const-string v2, "\n\n"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->a:Lcom/android/settings/f$a;

    const-string v3, "LINK_BEGIN"

    .line 1052
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1054
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v3, 0xa

    .line 1057
    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v5, "LINK_END"

    .line 1058
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 1060
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v5, 0x8

    .line 1063
    invoke-virtual {v1, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1066
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1067
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1068
    new-instance v4, Lcom/android/settings/f$1;

    invoke-direct {v4, v2}, Lcom/android/settings/f$1;-><init>(Lcom/android/settings/f$a;)V

    const/16 v2, 0x21

    .line 1080
    invoke-interface {v1, v4, v3, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 82
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/LinkablePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030046

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    .line 85
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x11

    .line 82
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    .line 116
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->c:Ljava/lang/CharSequence;

    .line 117
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->b:Ljava/lang/CharSequence;

    .line 126
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->c:Ljava/lang/CharSequence;

    .line 127
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
