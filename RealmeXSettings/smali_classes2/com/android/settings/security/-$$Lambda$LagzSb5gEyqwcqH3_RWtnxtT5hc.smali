.class public final synthetic Lcom/android/settings/security/-$$Lambda$LagzSb5gEyqwcqH3_RWtnxtT5hc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/security/LockscreenDashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/LockscreenDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/-$$Lambda$LagzSb5gEyqwcqH3_RWtnxtT5hc;->f$0:Lcom/android/settings/security/LockscreenDashboardFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/-$$Lambda$LagzSb5gEyqwcqH3_RWtnxtT5hc;->f$0:Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->b_()V

    return-void
.end method