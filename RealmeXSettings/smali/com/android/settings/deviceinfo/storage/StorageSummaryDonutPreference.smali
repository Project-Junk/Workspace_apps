.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.super Landroidx/preference/Preference;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 42
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->a:D

    const p1, 0x7f0d02ed

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a021f

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/DonutView;

    if-eqz v0, :cond_0

    .line 70
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->a:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/DonutView;->setPercentage(D)V

    :cond_0
    const v0, 0x7f0a01e1

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f0a01e1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    const/16 v1, 0x348

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 85
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
