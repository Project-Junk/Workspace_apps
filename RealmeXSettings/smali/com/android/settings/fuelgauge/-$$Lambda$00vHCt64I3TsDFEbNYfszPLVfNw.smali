.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$00vHCt64I3TsDFEbNYfszPLVfNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$00vHCt64I3TsDFEbNYfszPLVfNw;->f$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    return-void
.end method


# virtual methods
.method public final onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$00vHCt64I3TsDFEbNYfszPLVfNw;->f$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/c/c;)V

    return-void
.end method
