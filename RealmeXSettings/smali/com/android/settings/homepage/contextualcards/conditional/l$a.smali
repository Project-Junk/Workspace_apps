.class public final Lcom/android/settings/homepage/contextualcards/conditional/l$a;
.super Landroid/content/BroadcastReceiver;
.source "DndConditionCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/conditional/l;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/l;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/l;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/l;->a(Lcom/android/settings/homepage/contextualcards/conditional/l;)Lcom/android/settings/homepage/contextualcards/conditional/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    :cond_0
    return-void
.end method
