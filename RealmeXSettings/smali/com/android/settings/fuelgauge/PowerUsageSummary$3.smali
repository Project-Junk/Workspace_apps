.class final Lcom/android/settings/fuelgauge/PowerUsageSummary$3;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/d;",
            ">;>;"
        }
    .end annotation

    .line 146
    new-instance p1, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 8

    .line 143
    check-cast p2, Ljava/util/List;

    .line 1152
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 1161
    iget-object v0, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->g:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a00d9

    .line 1162
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 1163
    iget-object v1, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->g:Lcom/android/settingslib/widget/LayoutPreference;

    const v2, 0x7f0a00da

    .line 1164
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1165
    iget-object v2, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->g:Lcom/android/settingslib/widget/LayoutPreference;

    const v3, 0x7f0a0688

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1166
    iget-object v3, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->g:Lcom/android/settingslib/widget/LayoutPreference;

    const v4, 0x7f0a0689

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 1167
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/d;

    const/4 v5, 0x1

    .line 1168
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/d;

    .line 1169
    iget v6, v4, Lcom/android/settings/fuelgauge/d;->c:I

    invoke-static {v6}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v6, v4, Lcom/android/settings/fuelgauge/d;->e:J

    .line 1176
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v6

    .line 1175
    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    const/4 v1, 0x0

    .line 1174
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v6, p2, Lcom/android/settings/fuelgauge/d;->e:J

    .line 1181
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v6

    .line 1180
    invoke-static {p1, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    .line 1179
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget p1, v4, Lcom/android/settings/fuelgauge/d;->c:I

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 1184
    iget-boolean p1, v4, Lcom/android/settings/fuelgauge/d;->d:Z

    xor-int/2addr p1, v5

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/d;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
