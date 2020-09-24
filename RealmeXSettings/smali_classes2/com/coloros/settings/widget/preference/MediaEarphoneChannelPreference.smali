.class public Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;
.super Landroidx/preference/Preference;
.source "MediaEarphoneChannelPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:I

.field private c:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 38
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->f:Ljava/lang/String;

    const p1, 0x7f0d019d

    .line 51
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->f:Ljava/lang/String;

    const v0, 0x7f0d019d

    .line 42
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->setLayoutResource(I)V

    .line 43
    sget-object v0, Lcom/android/settings/g$a;->MediaEarphoneChannelPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->f:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->b:I

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;Ljava/lang/Object;)Z
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->f:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->notifyChanged()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 114
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->b(Z)V

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->c:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    new-instance v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;-><init>(Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;B)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->c:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;

    .line 58
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a034a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    .line 59
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a034c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->e:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    iget v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 64
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0349

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 65
    iget v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->c:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 1108
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    xor-int/lit8 v0, v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->b(Z)V

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
