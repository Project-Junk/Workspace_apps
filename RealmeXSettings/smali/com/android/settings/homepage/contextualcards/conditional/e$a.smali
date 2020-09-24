.class public final Lcom/android/settings/homepage/contextualcards/conditional/e$a;
.super Landroid/content/BroadcastReceiver;
.source "CellularDataConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/conditional/e;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/e;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ANY_DATA_STATE"

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/e;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/e;->a(Lcom/android/settings/homepage/contextualcards/conditional/e;)Lcom/android/settings/homepage/contextualcards/conditional/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    :cond_0
    return-void
.end method
