.class final Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;
.super Landroidx/preference/Preference;
.source "ColorScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;)V
    .locals 1

    .line 301
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, p2, v0, p1, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d00e0

    .line 303
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->setLayoutResource(I)V

    return-void
.end method

.method private constructor <init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;B)V
    .locals 0

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;C)V
    .locals 0

    const/4 p3, 0x0

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;B)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;S)V
    .locals 0

    const/4 p3, 0x0

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;C)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 320
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05ab

    .line 321
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    const v1, 0x7f1212f7

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    const v2, 0x7f1212f6

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 327
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 328
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 330
    new-instance v1, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a$1;

    iget-object v4, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-static {v4}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a$1;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;Landroid/content/Context;)V

    const/16 v4, 0x21

    .line 337
    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 338
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 342
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 343
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
