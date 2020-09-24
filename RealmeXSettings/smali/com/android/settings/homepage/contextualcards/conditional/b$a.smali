.class public final Lcom/android/settings/homepage/contextualcards/conditional/b$a;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/conditional/b;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/b;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/b;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/b;->a(Lcom/android/settings/homepage/contextualcards/conditional/b;)Lcom/android/settings/homepage/contextualcards/conditional/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    :cond_0
    return-void
.end method
