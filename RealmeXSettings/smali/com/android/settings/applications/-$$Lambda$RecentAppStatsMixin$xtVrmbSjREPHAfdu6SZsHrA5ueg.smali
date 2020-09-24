.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

.field private final synthetic f$1:Lcom/android/settings/applications/RecentAppStatsMixin$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;->f$1:Lcom/android/settings/applications/RecentAppStatsMixin$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;->f$1:Lcom/android/settings/applications/RecentAppStatsMixin$a;

    invoke-static {v0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;->lambda$xtVrmbSjREPHAfdu6SZsHrA5ueg(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$a;)V

    return-void
.end method
