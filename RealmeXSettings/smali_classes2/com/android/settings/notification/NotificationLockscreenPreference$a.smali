.class final Lcom/android/settings/notification/NotificationLockscreenPreference$a;
.super Ljava/lang/Object;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationLockscreenPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Lcom/android/settings/notification/NotificationLockscreenPreference;

.field private final c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->b:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->c:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->b:Lcom/android/settings/notification/NotificationLockscreenPreference;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->a(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 151
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 153
    iget-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->b:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 155
    invoke-static {v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->a(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->a(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I

    move-result p1

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "com.android.internal.R.id.customPanel"

    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->b:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->b:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 172
    invoke-static {v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->b(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 171
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    :cond_0
    return-void
.end method
