.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

.field private final synthetic f$1:Lcom/android/settingslib/net/g;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object p2, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;->f$1:Lcom/android/settingslib/net/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iget-object v1, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;->f$1:Lcom/android/settingslib/net/g;

    invoke-static {v0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->lambda$sLyIVBjchrAN4YmW-Ia8TWqTdEo(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/g;)V

    return-void
.end method
