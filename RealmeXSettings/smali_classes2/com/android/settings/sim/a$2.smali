.class final Lcom/android/settings/sim/a$2;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/android/settings/sim/a;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/a;Landroid/widget/Spinner;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    iput-object p2, p0, Lcom/android/settings/sim/a$2;->a:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 160
    iget-object p2, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    iget-object p2, p2, Lcom/android/settings/sim/a;->b:Landroid/view/View;

    const v0, 0x7f0a0610

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 161
    invoke-static {p2}, Lcom/android/settings/m;->a(Landroid/widget/EditText;)V

    .line 162
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 163
    iget-object v0, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v0}, Lcom/android/settings/sim/a;->a(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v1}, Lcom/android/settings/sim/a;->a(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v1}, Lcom/android/settings/sim/a;->b(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v0, v2}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;II)I

    .line 168
    iget-object p2, p0, Lcom/android/settings/sim/a$2;->a:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    .line 169
    iget-object v0, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v0}, Lcom/android/settings/sim/a;->a(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v1}, Lcom/android/settings/sim/a;->c(Lcom/android/settings/sim/a;)[I

    move-result-object v1

    aget p2, v1, p2

    .line 171
    iget-object v1, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v1}, Lcom/android/settings/sim/a;->a(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/sim/a$2;->b:Lcom/android/settings/sim/a;

    invoke-static {v1}, Lcom/android/settings/sim/a;->b(Lcom/android/settings/sim/a;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 173
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
