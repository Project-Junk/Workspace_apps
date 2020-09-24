.class final Lcom/android/settings/datausage/BillingCyclePreference$1;
.super Lcom/android/settings/datausage/CellDataPreference$a;
.source "BillingCyclePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCyclePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/BillingCyclePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCyclePreference;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference$1;->a:Lcom/android/settings/datausage/BillingCyclePreference;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference$1;->a:Lcom/android/settings/datausage/BillingCyclePreference;

    invoke-static {p1}, Lcom/android/settings/datausage/BillingCyclePreference;->a(Lcom/android/settings/datausage/BillingCyclePreference;)V

    return-void
.end method
