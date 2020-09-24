.class public Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "EnvelopeDetectPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTvCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d0165

    .line 61
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0248

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mTvCount:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->updateCount()V

    const-string p1, "/system/fonts/SysSans-En-Regular.otf"

    .line 69
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mTvCount:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateCount()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeCount(Landroid/content/Context;)I

    move-result v0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->mTvCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
