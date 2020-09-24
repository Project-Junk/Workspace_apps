.class public Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;
.super Landroidx/preference/Preference;
.source "RadioImageButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "RadioImageButtonPreference"

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->a:I

    const p3, 0x7f0d0139

    .line 61
    invoke-virtual {p0, p3}, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->setLayoutResource(I)V

    .line 1078
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    :try_start_0
    const-string p1, "ro.oppo.screen.heteromorphism"

    .line 1087
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "cutout size: "

    .line 1088
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p4, "[,:]"

    .line 1092
    invoke-virtual {p1, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1093
    array-length p4, p1

    const/4 v1, 0x4

    if-ne p4, v1, :cond_2

    .line 1094
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 p4, 0x2

    .line 1095
    aget-object p1, p1, p4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x32

    if-ge p2, v1, :cond_1

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_1

    .line 1097
    iput p3, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->a:I

    goto :goto_0

    .line 1099
    :cond_1
    iput p4, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1103
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Error occur, e = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "set display cutout type : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_3
    :goto_1
    iput p3, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->a:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 110
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01b6

    .line 1115
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->b:Landroid/view/View;

    const v0, 0x7f0a01b7

    .line 1116
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->c:Landroid/view/View;

    const v0, 0x7f0a01ba

    .line 1117
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    const v0, 0x7f0a01bb

    .line 1118
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    const v0, 0x7f0a01bc

    .line 1119
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->f:Landroid/widget/TextView;

    const v0, 0x7f0a01bd

    .line 1120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->g:Landroid/widget/TextView;

    const v0, 0x7f0a01b8

    .line 1121
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a01b9

    .line 1122
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->i:Landroid/widget/ImageView;

    .line 1124
    iget p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const v2, 0x7f12068f

    const v3, 0x7f12068e

    if-eq p1, v0, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 1146
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1149
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1150
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->h:Landroid/widget/ImageView;

    const v4, 0x7f0804ff

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1151
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->i:Landroid/widget/ImageView;

    const v4, 0x7f0804fe

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1152
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1153
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1136
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1139
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1140
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->h:Landroid/widget/ImageView;

    const v4, 0x7f0804fd

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1141
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->i:Landroid/widget/ImageView;

    const v4, 0x7f0804fc

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1142
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1143
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1126
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1129
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1130
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->h:Landroid/widget/ImageView;

    const v2, 0x7f080693

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->i:Landroid/widget/ImageView;

    const v2, 0x7f080694

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1132
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->f:Landroid/widget/TextView;

    const v2, 0x7f120a26

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1133
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->g:Landroid/widget/TextView;

    const v2, 0x7f120a27

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1158
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1159
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 167
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/RadioImageButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a01b6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
