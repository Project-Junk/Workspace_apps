.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$NChFAPi4Rjj3vO00ycCFNgeUpBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$NChFAPi4Rjj3vO00ycCFNgeUpBs;->f$0:Lcom/android/settingslib/wifi/WifiTracker$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$NChFAPi4Rjj3vO00ycCFNgeUpBs;->f$0:Lcom/android/settingslib/wifi/WifiTracker$b;

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$b;->n_()V

    return-void
.end method
