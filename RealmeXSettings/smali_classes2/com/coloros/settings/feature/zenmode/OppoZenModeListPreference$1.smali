.class final Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$1;
.super Ljava/lang/Object;
.source "OppoZenModeListPreference.java"

# interfaces
.implements Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$1;->a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Lcolor/support/v7/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcolor/support/v7/internal/widget/AdapterViewCompat<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$1;->a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(IZ)V

    return-void
.end method

.method public final onNothingSelected(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcolor/support/v7/internal/widget/AdapterViewCompat<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
