.class public final synthetic Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroidx/preference/TwoStatePreference;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/TwoStatePreference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;->f$0:Landroidx/preference/TwoStatePreference;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;->f$0:Landroidx/preference/TwoStatePreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lcom/coloros/settings/feature/accounts/AccountFeature;->lambda$getCancelListener$0(Landroidx/preference/TwoStatePreference;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
