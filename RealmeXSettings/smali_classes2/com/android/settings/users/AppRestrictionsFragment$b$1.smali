.class final Lcom/android/settings/users/AppRestrictionsFragment$b$1;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment$b;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/android/settings/users/AppRestrictionsFragment$b;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment$b;Landroid/view/View;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b$1;->b:Lcom/android/settings/users/AppRestrictionsFragment$b;

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$b$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b$1;->b:Lcom/android/settings/users/AppRestrictionsFragment$b;

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->a(Lcom/android/settings/users/AppRestrictionsFragment$b;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$b$1;->a:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
