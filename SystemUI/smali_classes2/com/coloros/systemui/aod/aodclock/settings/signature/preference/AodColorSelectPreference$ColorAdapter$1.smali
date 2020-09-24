.class Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;
.super Ljava/lang/Object;
.source "AodColorSelectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

.field final synthetic val$holder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->val$holder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->val$holder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->access$102(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;I)I

    .line 139
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->val$holder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->updateStatus(Z)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->val$holder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->updateStatus(Z)V

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;->val$holder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    invoke-static {p1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->access$202(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    :cond_1
    return-void
.end method
