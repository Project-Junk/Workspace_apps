.class final Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;
.super Ljava/lang/Object;
.source "MediaEarphoneChannelPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;->a:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;B)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;-><init>(Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;->a:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    .line 1108
    iget-boolean p1, p1, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    if-eq p1, p2, :cond_0

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;->a:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->b(Z)V

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference$a;->a:Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a(Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
