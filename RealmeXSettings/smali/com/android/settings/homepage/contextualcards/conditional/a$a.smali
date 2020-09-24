.class final Lcom/android/settings/homepage/contextualcards/conditional/a$a;
.super Landroid/content/BroadcastReceiver;
.source "AbnormalRingerConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/conditional/a;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/a;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/a;->a(Lcom/android/settings/homepage/contextualcards/conditional/a;)Lcom/android/settings/homepage/contextualcards/conditional/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    :cond_0
    return-void
.end method
