.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/SubscriptionsPreferenceController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    iput p2, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget v1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$zXnBnN8mFuDrEiifdleVWcYDhFs(Lcom/android/settings/network/SubscriptionsPreferenceController;ILandroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
