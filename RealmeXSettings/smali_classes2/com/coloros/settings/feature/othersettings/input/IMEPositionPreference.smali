.class public Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;
.super Landroidx/preference/Preference;
.source "IMEPositionPreference.java"


# instance fields
.field private a:Landroid/widget/RadioButton;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance p2, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->d:Landroid/view/View$OnClickListener;

    .line 1056
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->c:Landroid/content/ContentResolver;

    const p1, 0x7f0d008d

    .line 1057
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/content/ContentResolver;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->c:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/widget/RadioButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->a:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/widget/RadioButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->b:Landroid/widget/RadioButton;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const v0, 0x7f0a0544

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->a:Landroid/widget/RadioButton;

    const v0, 0x7f0a0545

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->b:Landroid/widget/RadioButton;

    const v0, 0x7f0a0326

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0327

    .line 65
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 66
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->a:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->b:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->c:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const-string v1, "keyboard_position"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->a:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->b:Landroid/widget/RadioButton;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
