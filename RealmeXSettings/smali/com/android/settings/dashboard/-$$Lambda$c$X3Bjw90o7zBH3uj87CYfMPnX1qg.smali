.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/preference/Preference;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;->f$0:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/c;->lambda$X3Bjw90o7zBH3uj87CYfMPnX1qg(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method
