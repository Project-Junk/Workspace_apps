.class final Lcom/android/settings/notification/NotificationStation$b$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationStation$b;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/android/settings/notification/NotificationStation$b;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation$b;Landroid/widget/TextView;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$b$1;->b:Lcom/android/settings/notification/NotificationStation$b;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$b$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 631
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$b$1;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$b$1;->b:Lcom/android/settings/notification/NotificationStation$b;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationStation$b;->a(Lcom/android/settings/notification/NotificationStation$b;)Lcom/android/settings/notification/NotificationStation$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/android/settings/notification/NotificationStation$a;->j:J

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation$b;->a(J)J

    return-void
.end method
