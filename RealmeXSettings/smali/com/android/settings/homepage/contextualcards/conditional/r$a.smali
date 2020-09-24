.class public final Lcom/android/settings/homepage/contextualcards/conditional/r$a;
.super Landroid/content/BroadcastReceiver;
.source "WorkModeConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/conditional/r;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/r;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 128
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 129
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/r;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/r;->a(Lcom/android/settings/homepage/contextualcards/conditional/r;)Lcom/android/settings/homepage/contextualcards/conditional/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    :cond_1
    return-void
.end method
