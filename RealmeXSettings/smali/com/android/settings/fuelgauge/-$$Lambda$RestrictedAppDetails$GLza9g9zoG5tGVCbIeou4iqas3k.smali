.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

.field private final synthetic f$1:Lcom/android/settings/fuelgauge/batterytip/c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;->f$1:Lcom/android/settings/fuelgauge/batterytip/c;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;->f$1:Lcom/android/settings/fuelgauge/batterytip/c;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->lambda$GLza9g9zoG5tGVCbIeou4iqas3k(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/c;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
