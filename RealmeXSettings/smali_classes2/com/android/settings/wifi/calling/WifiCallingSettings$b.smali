.class final Lcom/android/settings/wifi/calling/WifiCallingSettings$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "WifiCallingSettings.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

.field private final b:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 155
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 156
    iput-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    const-string v1, "WifiCallingSettings"

    if-nez v0, :cond_0

    const-string v0, "Adapter getCount null mSil "

    .line 187
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Adapter getCount "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adapter getItem "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 170
    invoke-static {v1}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string v1, "subId"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    new-instance p1, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;-><init>()V

    .line 172
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->a:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 179
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adapter instantiateItem "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 181
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager;->a(I)I

    move-result p2

    .line 180
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
