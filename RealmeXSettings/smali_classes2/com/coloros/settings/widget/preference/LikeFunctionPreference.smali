.class public Lcom/coloros/settings/widget/preference/LikeFunctionPreference;
.super Landroidx/preference/Preference;
.source "LikeFunctionPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a:I

    const p1, 0x7f0d01a4

    .line 40
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a:I

    const p1, 0x7f0d01a4

    .line 35
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->setLayoutResource(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 45
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0399

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0201

    .line 47
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a039a

    .line 50
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0202

    .line 51
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 54
    iget p1, p0, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a:I

    const v2, 0x7f08089e

    const v3, 0x7f0808a0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f08089f

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f08089d

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a:I

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->notifyChanged()V

    return-void

    :sswitch_1
    const/4 p1, 0x1

    .line 77
    iput p1, p0, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a:I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->a(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/LikeFunctionPreference;->notifyChanged()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0201 -> :sswitch_1
        0x7f0a0202 -> :sswitch_1
        0x7f0a0399 -> :sswitch_0
        0x7f0a039a -> :sswitch_0
    .end sparse-switch
.end method
